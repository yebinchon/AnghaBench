; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__mountpoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/api/fs/extr_fs.c_fs__mountpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs = type { i64, i64 }

@fs__entries = common dso_local global %struct.fs* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @fs__mountpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @fs__mountpoint(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.fs*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load %struct.fs*, %struct.fs** @fs__entries, align 8
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.fs, %struct.fs* %5, i64 %7
  store %struct.fs* %8, %struct.fs** %4, align 8
  %9 = load %struct.fs*, %struct.fs** %4, align 8
  %10 = getelementptr inbounds %struct.fs, %struct.fs* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.fs*, %struct.fs** %4, align 8
  %15 = getelementptr inbounds %struct.fs, %struct.fs* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.fs*, %struct.fs** %4, align 8
  %20 = call i8* @fs__get_mountpoint(%struct.fs* %19)
  store i8* %20, i8** %2, align 8
  br label %21

21:                                               ; preds = %18, %13
  %22 = load i8*, i8** %2, align 8
  ret i8* %22
}

declare dso_local i8* @fs__get_mountpoint(%struct.fs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
