; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_drop_refs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_drop_refs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext4_ext_drop_refs(%struct.ext4_ext_path* %0) #0 {
  %2 = alloca %struct.ext4_ext_path*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %2, align 8
  %5 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %6 = icmp ne %struct.ext4_ext_path* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %34

8:                                                ; preds = %1
  %9 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %10 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %29, %8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %12
  %17 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %18 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %23 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @brelse(i32* %24)
  %26 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %27 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %26, i32 0, i32 1
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %2, align 8
  %33 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i32 1
  store %struct.ext4_ext_path* %33, %struct.ext4_ext_path** %2, align 8
  br label %12

34:                                               ; preds = %7, %12
  ret void
}

declare dso_local i32 @brelse(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
