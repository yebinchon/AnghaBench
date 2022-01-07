; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_read_summary_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_recovery.c_nilfs_read_summary_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.the_nilfs = type { i32, i32 }
%struct.buffer_head = type { i32, i8*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.the_nilfs*, %struct.buffer_head**, i32*, i32)* @nilfs_read_summary_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nilfs_read_summary_info(%struct.the_nilfs* %0, %struct.buffer_head** %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.the_nilfs*, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.the_nilfs* %0, %struct.the_nilfs** %6, align 8
  store %struct.buffer_head** %1, %struct.buffer_head*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %13 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %14 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = icmp ult i32 %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %23 = load %struct.buffer_head*, %struct.buffer_head** %22, align 8
  %24 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  %28 = sub i32 %25, %27
  %29 = icmp ugt i32 %21, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %4
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %11, align 8
  %35 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %35, align 8
  %37 = call i32 @brelse(%struct.buffer_head* %36)
  %38 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %39 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %11, align 8
  %42 = add nsw i64 %41, 1
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %6, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call %struct.buffer_head* @__bread(i32 %40, i64 %42, i32 %45)
  %47 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %46, %struct.buffer_head** %47, align 8
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %48, align 8
  %50 = icmp ne %struct.buffer_head* %49, null
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = call i64 @unlikely(i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %30
  store i8* null, i8** %5, align 8
  br label %72

56:                                               ; preds = %30
  %57 = load i32*, i32** %8, align 8
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %4
  %59 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %59, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 1
  %62 = load i8*, i8** %61, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr i8, i8* %62, i64 %65
  store i8* %66, i8** %10, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add i32 %69, %67
  store i32 %70, i32* %68, align 4
  %71 = load i8*, i8** %10, align 8
  store i8* %71, i8** %5, align 8
  br label %72

72:                                               ; preds = %58, %55
  %73 = load i8*, i8** %5, align 8
  ret i8* %73
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @__bread(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
