; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_validate_pnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_validate_pnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i64 }
%struct.ubifs_pnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ubifs_nnode = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_pnode*, %struct.ubifs_nnode*, i32)* @validate_pnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_pnode(%struct.ubifs_info* %0, %struct.ubifs_pnode* %1, %struct.ubifs_nnode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_pnode*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_pnode* %1, %struct.ubifs_pnode** %7, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %15 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %32

18:                                               ; preds = %4
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %20 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @calc_pnode_num_from_parent(%struct.ubifs_info* %19, %struct.ubifs_nnode* %20, i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %24 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %108

31:                                               ; preds = %18
  br label %32

32:                                               ; preds = %31, %4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %104, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %107

37:                                               ; preds = %33
  %38 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %39 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %12, align 4
  %46 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %7, align 8
  %47 = getelementptr inbounds %struct.ubifs_pnode, %struct.ubifs_pnode* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %73, label %56

56:                                               ; preds = %37
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %59 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %73, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %12, align 4
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %65 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = srem i32 %63, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %73, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* %12, align 4
  %71 = and i32 %70, 7
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69, %62, %56, %37
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %69
  %77 = load i32, i32* %13, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* %13, align 4
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %82 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %80, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %13, align 4
  %87 = and i32 %86, 7
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85, %79, %76
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %108

92:                                               ; preds = %85
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* %12, align 4
  %95 = add nsw i32 %93, %94
  %96 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %97 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %92
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %5, align 4
  br label %108

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %33

107:                                              ; preds = %33
  store i32 0, i32* %5, align 4
  br label %108

108:                                              ; preds = %107, %100, %89, %73, %28
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @calc_pnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
