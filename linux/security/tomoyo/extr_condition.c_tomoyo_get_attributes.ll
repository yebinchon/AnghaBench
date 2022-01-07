; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_condition.c_tomoyo_get_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_obj_info = type { i32*, %struct.tomoyo_mini_stat*, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.tomoyo_mini_stat = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.TYPE_4__ = type { %struct.dentry* }
%struct.inode = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@TOMOYO_MAX_PATH_STAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tomoyo_get_attributes(%struct.tomoyo_obj_info* %0) #0 {
  %2 = alloca %struct.tomoyo_obj_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.tomoyo_mini_stat*, align 8
  store %struct.tomoyo_obj_info* %0, %struct.tomoyo_obj_info** %2, align 8
  store %struct.dentry* null, %struct.dentry** %4, align 8
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %96, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TOMOYO_MAX_PATH_STAT, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %99

11:                                               ; preds = %7
  %12 = load i32, i32* %3, align 4
  switch i32 %12, label %31 [
    i32 129, label %13
    i32 128, label %22
  ]

13:                                               ; preds = %11
  %14 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %2, align 8
  %15 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %17, %struct.dentry** %4, align 8
  %18 = load %struct.dentry*, %struct.dentry** %4, align 8
  %19 = icmp ne %struct.dentry* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %96

21:                                               ; preds = %13
  br label %38

22:                                               ; preds = %11
  %23 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %2, align 8
  %24 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  store %struct.dentry* %26, %struct.dentry** %4, align 8
  %27 = load %struct.dentry*, %struct.dentry** %4, align 8
  %28 = icmp ne %struct.dentry* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %96

30:                                               ; preds = %22
  br label %38

31:                                               ; preds = %11
  %32 = load %struct.dentry*, %struct.dentry** %4, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  br label %96

35:                                               ; preds = %31
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call %struct.dentry* @dget_parent(%struct.dentry* %36)
  store %struct.dentry* %37, %struct.dentry** %4, align 8
  br label %38

38:                                               ; preds = %35, %30, %21
  %39 = load %struct.dentry*, %struct.dentry** %4, align 8
  %40 = call %struct.inode* @d_backing_inode(%struct.dentry* %39)
  store %struct.inode* %40, %struct.inode** %5, align 8
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = icmp ne %struct.inode* %41, null
  br i1 %42, label %43, label %88

43:                                               ; preds = %38
  %44 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %2, align 8
  %45 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %44, i32 0, i32 1
  %46 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %46, i64 %48
  store %struct.tomoyo_mini_stat* %49, %struct.tomoyo_mini_stat** %6, align 8
  %50 = load %struct.inode*, %struct.inode** %5, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %54 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %53, i32 0, i32 5
  store i32 %52, i32* %54, align 4
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %59 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %64 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %69 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %76 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.tomoyo_mini_stat*, %struct.tomoyo_mini_stat** %6, align 8
  %81 = getelementptr inbounds %struct.tomoyo_mini_stat, %struct.tomoyo_mini_stat* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  %82 = load %struct.tomoyo_obj_info*, %struct.tomoyo_obj_info** %2, align 8
  %83 = getelementptr inbounds %struct.tomoyo_obj_info, %struct.tomoyo_obj_info* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  store i32 1, i32* %87, align 4
  br label %88

88:                                               ; preds = %43, %38
  %89 = load i32, i32* %3, align 4
  %90 = and i32 %89, 1
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.dentry*, %struct.dentry** %4, align 8
  %94 = call i32 @dput(%struct.dentry* %93)
  br label %95

95:                                               ; preds = %92, %88
  br label %96

96:                                               ; preds = %95, %34, %29, %20
  %97 = load i32, i32* %3, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %3, align 4
  br label %7

99:                                               ; preds = %7
  ret void
}

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local %struct.inode* @d_backing_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
