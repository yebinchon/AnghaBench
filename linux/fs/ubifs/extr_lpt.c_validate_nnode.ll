; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_validate_nnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_validate_nnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i32, i32, i32, i32, i32, i64 }
%struct.ubifs_nnode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %struct.ubifs_nnode*, %struct.ubifs_nnode*, i32)* @validate_nnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @validate_nnode(%struct.ubifs_info* %0, %struct.ubifs_nnode* %1, %struct.ubifs_nnode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_nnode*, align 8
  %8 = alloca %struct.ubifs_nnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_nnode* %1, %struct.ubifs_nnode** %7, align 8
  store %struct.ubifs_nnode* %2, %struct.ubifs_nnode** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %17 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %16, i32 0, i32 6
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %22 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @calc_nnode_num_from_parent(%struct.ubifs_info* %21, %struct.ubifs_nnode* %22, i32 %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %7, align 8
  %26 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %133

33:                                               ; preds = %20
  br label %34

34:                                               ; preds = %33, %4
  %35 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %36 = icmp ne %struct.ubifs_nnode* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %8, align 8
  %39 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 1
  br label %46

42:                                               ; preds = %34
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %44 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  br label %46

46:                                               ; preds = %42, %37
  %47 = phi i32 [ %41, %37 ], [ %45, %42 ]
  store i32 %47, i32* %11, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 1
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %133

53:                                               ; preds = %46
  %54 = load i32, i32* %11, align 4
  %55 = icmp eq i32 %54, 1
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %58 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %61 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 %59, %62
  store i32 %63, i32* %12, align 4
  br label %72

64:                                               ; preds = %53
  %65 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %66 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %69 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = sub nsw i32 %67, %70
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %64, %56
  store i32 0, i32* %10, align 4
  br label %73

73:                                               ; preds = %129, %72
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %132

77:                                               ; preds = %73
  %78 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %7, align 8
  %79 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %14, align 4
  %86 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %7, align 8
  %87 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %77
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %5, align 4
  br label %133

102:                                              ; preds = %96
  br label %129

103:                                              ; preds = %77
  %104 = load i32, i32* %14, align 4
  %105 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %106 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = icmp slt i32 %104, %107
  br i1 %108, label %115, label %109

109:                                              ; preds = %103
  %110 = load i32, i32* %14, align 4
  %111 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %112 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = icmp sgt i32 %110, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %109, %103
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %5, align 4
  br label %133

118:                                              ; preds = %109
  %119 = load i32, i32* %15, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* %12, align 4
  %124 = icmp sgt i32 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121, %118
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %5, align 4
  br label %133

128:                                              ; preds = %121
  br label %129

129:                                              ; preds = %128, %102
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %73

132:                                              ; preds = %73
  store i32 0, i32* %5, align 4
  br label %133

133:                                              ; preds = %132, %125, %115, %99, %50, %30
  %134 = load i32, i32* %5, align 4
  ret i32 %134
}

declare dso_local i32 @calc_nnode_num_from_parent(%struct.ubifs_info*, %struct.ubifs_nnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
