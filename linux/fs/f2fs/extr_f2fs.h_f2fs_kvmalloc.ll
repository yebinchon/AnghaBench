; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_kvmalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h_f2fs_kvmalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }

@FAULT_KVMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.f2fs_sb_info*, i64, i32)* @f2fs_kvmalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @f2fs_kvmalloc(%struct.f2fs_sb_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %9 = load i32, i32* @FAULT_KVMALLOC, align 4
  %10 = call i64 @time_to_inject(%struct.f2fs_sb_info* %8, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @FAULT_KVMALLOC, align 4
  %14 = call i32 @f2fs_show_injection_info(i32 %13)
  store i8* null, i8** %4, align 8
  br label %19

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @kvmalloc(i64 %16, i32 %17)
  store i8* %18, i8** %4, align 8
  br label %19

19:                                               ; preds = %15, %12
  %20 = load i8*, i8** %4, align 8
  ret i8* %20
}

declare dso_local i64 @time_to_inject(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_show_injection_info(i32) #1

declare dso_local i8* @kvmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
