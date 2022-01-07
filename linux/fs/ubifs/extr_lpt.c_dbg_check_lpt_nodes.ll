; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dbg_check_lpt_nodes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_lpt.c_dbg_check_lpt_nodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%struct.ubifs_cnode = type { i32, i32, i64, %struct.ubifs_nnode* }
%struct.ubifs_nnode = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.ubifs_cnode* }
%struct.ubifs_pnode = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"nnode num %d expected %d parent num %d iip %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT = common dso_local global i32 0, align 4
@UBIFS_LPT_FANOUT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbg_check_lpt_nodes(%struct.ubifs_info* %0, %struct.ubifs_cnode* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubifs_info*, align 8
  %7 = alloca %struct.ubifs_cnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubifs_nnode*, align 8
  %11 = alloca %struct.ubifs_nnode*, align 8
  %12 = alloca %struct.ubifs_cnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ubifs_pnode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %6, align 8
  store %struct.ubifs_cnode* %1, %struct.ubifs_cnode** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %18 = call i32 @dbg_is_chk_lprops(%struct.ubifs_info* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %130

21:                                               ; preds = %4
  br label %22

22:                                               ; preds = %117, %103, %21
  %23 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %24 = icmp ne %struct.ubifs_cnode* %23, null
  br i1 %24, label %25, label %129

25:                                               ; preds = %22
  %26 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %27 = load i32, i32* %8, align 4
  %28 = icmp sge i32 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @ubifs_assert(%struct.ubifs_info* %26, i32 %29)
  %31 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %32 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %31, i32 0, i32 3
  %33 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %32, align 8
  store %struct.ubifs_nnode* %33, %struct.ubifs_nnode** %10, align 8
  %34 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %35 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %25
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @calc_nnode_num(i32 %39, i32 %40)
  store i32 %41, i32* %13, align 4
  %42 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %43 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %44, %45
  br i1 %46, label %47, label %68

47:                                               ; preds = %38
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %49 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %50 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %54 = icmp ne %struct.ubifs_nnode* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %47
  %56 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %57 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  br label %60

59:                                               ; preds = %47
  br label %60

60:                                               ; preds = %59, %55
  %61 = phi i32 [ %58, %55 ], [ 0, %59 ]
  %62 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %63 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ubifs_err(%struct.ubifs_info* %48, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %52, i32 %61, i32 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %5, align 4
  br label %130

68:                                               ; preds = %38
  %69 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %70 = bitcast %struct.ubifs_cnode* %69 to %struct.ubifs_nnode*
  store %struct.ubifs_nnode* %70, %struct.ubifs_nnode** %11, align 8
  br label %71

71:                                               ; preds = %96, %68
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %99

75:                                               ; preds = %71
  %76 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %11, align 8
  %77 = getelementptr inbounds %struct.ubifs_nnode, %struct.ubifs_nnode* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %82, align 8
  store %struct.ubifs_cnode* %83, %struct.ubifs_cnode** %12, align 8
  %84 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %12, align 8
  %85 = icmp ne %struct.ubifs_cnode* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %75
  %87 = load i32, i32* %8, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %90 = load i32, i32* %9, align 4
  %91 = shl i32 %90, %89
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %14, align 4
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %95 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %12, align 8
  store %struct.ubifs_cnode* %95, %struct.ubifs_cnode** %7, align 8
  br label %99

96:                                               ; preds = %75
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %71

99:                                               ; preds = %86, %71
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* @UBIFS_LPT_FANOUT, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %99
  br label %22

104:                                              ; preds = %99
  br label %117

105:                                              ; preds = %25
  %106 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %107 = bitcast %struct.ubifs_cnode* %106 to %struct.ubifs_pnode*
  store %struct.ubifs_pnode* %107, %struct.ubifs_pnode** %16, align 8
  %108 = load %struct.ubifs_info*, %struct.ubifs_info** %6, align 8
  %109 = load %struct.ubifs_pnode*, %struct.ubifs_pnode** %16, align 8
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dbg_chk_pnode(%struct.ubifs_info* %108, %struct.ubifs_pnode* %109, i32 %110)
  store i32 %111, i32* %15, align 4
  %112 = load i32, i32* %15, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %105
  %115 = load i32, i32* %15, align 4
  store i32 %115, i32* %5, align 4
  br label %130

116:                                              ; preds = %105
  br label %117

117:                                              ; preds = %116, %104
  %118 = load i32, i32* %8, align 4
  %119 = sub nsw i32 %118, 1
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* @UBIFS_LPT_FANOUT_SHIFT, align 4
  %121 = load i32, i32* %9, align 4
  %122 = ashr i32 %121, %120
  store i32 %122, i32* %9, align 4
  %123 = load %struct.ubifs_cnode*, %struct.ubifs_cnode** %7, align 8
  %124 = getelementptr inbounds %struct.ubifs_cnode, %struct.ubifs_cnode* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %14, align 4
  %127 = load %struct.ubifs_nnode*, %struct.ubifs_nnode** %10, align 8
  %128 = bitcast %struct.ubifs_nnode* %127 to %struct.ubifs_cnode*
  store %struct.ubifs_cnode* %128, %struct.ubifs_cnode** %7, align 8
  br label %22

129:                                              ; preds = %22
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %114, %60, %20
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @dbg_is_chk_lprops(%struct.ubifs_info*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @calc_nnode_num(i32, i32) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @dbg_chk_pnode(%struct.ubifs_info*, %struct.ubifs_pnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
