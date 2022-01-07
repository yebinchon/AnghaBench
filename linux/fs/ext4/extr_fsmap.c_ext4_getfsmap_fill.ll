; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_fill.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_fsmap.c_ext4_getfsmap_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.ext4_fsmap = type { i32, i8*, i32, i8*, i64, i64 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*, i32)* @ext4_getfsmap_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_getfsmap_fill(%struct.list_head* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ext4_fsmap*, align 8
  store %struct.list_head* %0, %struct.list_head** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @GFP_NOFS, align 4
  %12 = call %struct.ext4_fsmap* @kmalloc(i32 48, i32 %11)
  store %struct.ext4_fsmap* %12, %struct.ext4_fsmap** %10, align 8
  %13 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %14 = icmp ne %struct.ext4_fsmap* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %20 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %22 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %25 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %24, i32 0, i32 3
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %28 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load i8*, i8** %8, align 8
  %30 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %31 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %30, i32 0, i32 1
  store i8* %29, i8** %31, align 8
  %32 = load %struct.ext4_fsmap*, %struct.ext4_fsmap** %10, align 8
  %33 = getelementptr inbounds %struct.ext4_fsmap, %struct.ext4_fsmap* %32, i32 0, i32 0
  %34 = load %struct.list_head*, %struct.list_head** %6, align 8
  %35 = call i32 @list_add_tail(i32* %33, %struct.list_head* %34)
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %18, %15
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local %struct.ext4_fsmap* @kmalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
