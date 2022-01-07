; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.to_free = type { i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.to_free*, i64, i32)* @free_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_data(%struct.to_free* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.to_free*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.to_free* %0, %struct.to_free** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.to_free*, %struct.to_free** %4, align 8
  %8 = getelementptr inbounds %struct.to_free, %struct.to_free* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.to_free*, %struct.to_free** %4, align 8
  %13 = getelementptr inbounds %struct.to_free, %struct.to_free* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %11
  %18 = load %struct.to_free*, %struct.to_free** %4, align 8
  %19 = getelementptr inbounds %struct.to_free, %struct.to_free* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.to_free*, %struct.to_free** %4, align 8
  %22 = getelementptr inbounds %struct.to_free, %struct.to_free* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.to_free*, %struct.to_free** %4, align 8
  %25 = getelementptr inbounds %struct.to_free, %struct.to_free* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = zext i32 %26 to i64
  %28 = sub nsw i64 %23, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct.to_free*, %struct.to_free** %4, align 8
  %31 = getelementptr inbounds %struct.to_free, %struct.to_free* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ufs_free_blocks(i32 %20, i32 %29, i32 %32)
  %34 = load %struct.to_free*, %struct.to_free** %4, align 8
  %35 = getelementptr inbounds %struct.to_free, %struct.to_free* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  br label %36

36:                                               ; preds = %17, %11, %3
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.to_free*, %struct.to_free** %4, align 8
  %39 = getelementptr inbounds %struct.to_free, %struct.to_free* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load i64, i64* %5, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = load %struct.to_free*, %struct.to_free** %4, align 8
  %47 = getelementptr inbounds %struct.to_free, %struct.to_free* %46, i32 0, i32 1
  store i64 %45, i64* %47, align 8
  ret void
}

declare dso_local i32 @ufs_free_blocks(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
