; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_walk_component.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_walk_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i64, %struct.TYPE_2__, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.path = type { i32, i32 }
%struct.inode = type { i32 }

@LAST_NORM = common dso_local global i64 0, align 8
@WALK_MORE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, i32)* @walk_component to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @walk_component(%struct.nameidata* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nameidata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.path, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @LAST_NORM, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %20 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @handle_dots(%struct.nameidata* %19, i64 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @WALK_MORE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %18
  %29 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %30 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %29, i32 0, i32 4
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %35 = call i32 @put_link(%struct.nameidata* %34)
  br label %36

36:                                               ; preds = %33, %28, %18
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %3, align 4
  br label %107

38:                                               ; preds = %2
  %39 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %40 = call i32 @lookup_fast(%struct.nameidata* %39, %struct.path* %6, %struct.inode** %7, i32* %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp sle i32 %41, 0
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %101

46:                                               ; preds = %38
  %47 = load i32, i32* %9, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %107

51:                                               ; preds = %46
  %52 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %53 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %52, i32 0, i32 3
  %54 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %55 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @lookup_slow(i32* %53, i32 %57, i32 %60)
  %62 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @IS_ERR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %51
  %68 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @PTR_ERR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %107

71:                                               ; preds = %51
  %72 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %73 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 4
  %77 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %78 = call i32 @follow_managed(%struct.path* %6, %struct.nameidata* %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %71
  %85 = load i32, i32* %9, align 4
  store i32 %85, i32* %3, align 4
  br label %107

86:                                               ; preds = %71
  %87 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @d_is_negative(i32 %88)
  %90 = call i64 @unlikely(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %86
  %93 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %94 = call i32 @path_to_nameidata(%struct.path* %6, %struct.nameidata* %93)
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %107

97:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  %98 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call %struct.inode* @d_backing_inode(i32 %99)
  store %struct.inode* %100, %struct.inode** %7, align 8
  br label %101

101:                                              ; preds = %97, %38
  %102 = load %struct.nameidata*, %struct.nameidata** %4, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load %struct.inode*, %struct.inode** %7, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @step_into(%struct.nameidata* %102, %struct.path* %6, i32 %103, %struct.inode* %104, i32 %105)
  store i32 %106, i32* %3, align 4
  br label %107

107:                                              ; preds = %101, %92, %84, %67, %49, %36
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @handle_dots(%struct.nameidata*, i64) #1

declare dso_local i32 @put_link(%struct.nameidata*) #1

declare dso_local i32 @lookup_fast(%struct.nameidata*, %struct.path*, %struct.inode**, i32*) #1

declare dso_local i32 @lookup_slow(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @follow_managed(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @d_is_negative(i32) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local %struct.inode* @d_backing_inode(i32) #1

declare dso_local i32 @step_into(%struct.nameidata*, %struct.path*, i32, %struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
