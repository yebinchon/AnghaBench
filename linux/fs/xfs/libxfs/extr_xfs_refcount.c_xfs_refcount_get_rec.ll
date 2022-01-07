; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_get_rec.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_refcount.c_xfs_refcount_get_rec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { %struct.TYPE_4__, %struct.xfs_mount* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_mount = type { i32 }
%struct.xfs_refcount_irec = type { i32, i32, i32 }
%union.xfs_btree_rec = type { i32 }

@MAXREFCEXTLEN = common dso_local global i32 0, align 4
@XFS_REFC_COW_START = common dso_local global i32 0, align 4
@MAXREFCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Refcount BTree record corruption in AG %d detected!\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Start block 0x%x, block count 0x%x, references 0x%x\00", align 1
@EFSCORRUPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_refcount_get_rec(%struct.xfs_btree_cur* %0, %struct.xfs_refcount_irec* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca %struct.xfs_refcount_irec*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_mount*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %union.xfs_btree_rec*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store %struct.xfs_refcount_irec* %1, %struct.xfs_refcount_irec** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %14 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %13, i32 0, i32 1
  %15 = load %struct.xfs_mount*, %struct.xfs_mount** %14, align 8
  store %struct.xfs_mount* %15, %struct.xfs_mount** %8, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %9, align 4
  %21 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @xfs_btree_get_rec(%struct.xfs_btree_cur* %21, %union.xfs_btree_rec** %10, i32* %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %26, %3
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %4, align 4
  br label %146

32:                                               ; preds = %26
  %33 = load %union.xfs_btree_rec*, %union.xfs_btree_rec** %10, align 8
  %34 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %35 = call i32 @xfs_refcount_btrec_to_irec(%union.xfs_btree_rec* %33, %struct.xfs_refcount_irec* %34)
  %36 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %37 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %42 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %47 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @MAXREFCEXTLEN, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45, %32
  br label %129

52:                                               ; preds = %45
  %53 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %54 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* @XFS_REFC_COW_START, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %62 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 1
  br i1 %64, label %65, label %66

65:                                               ; preds = %60
  br label %129

66:                                               ; preds = %60
  %67 = load i32, i32* @XFS_REFC_COW_START, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %12, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %12, align 4
  br label %78

71:                                               ; preds = %52
  %72 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %73 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 2
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %129

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77, %66
  %79 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %79, i32 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

84:                                               ; preds = %78
  br label %129

85:                                               ; preds = %78
  %86 = load i32, i32* %12, align 4
  %87 = load i32, i32* %12, align 4
  %88 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %89 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = add nsw i32 %87, %90
  %92 = icmp sgt i32 %86, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  br label %129

94:                                               ; preds = %85
  %95 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %99 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %97, %100
  %102 = sub nsw i32 %101, 1
  %103 = call i32 @xfs_verify_agbno(%struct.xfs_mount* %95, i32 %96, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %94
  br label %129

106:                                              ; preds = %94
  %107 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %108 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %117, label %111

111:                                              ; preds = %106
  %112 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %113 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @MAXREFCOUNT, align 4
  %116 = icmp sgt i32 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %111, %106
  br label %129

118:                                              ; preds = %111
  %119 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %120 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %119, i32 0, i32 1
  %121 = load %struct.xfs_mount*, %struct.xfs_mount** %120, align 8
  %122 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %123 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %128 = call i32 @trace_xfs_refcount_get(%struct.xfs_mount* %121, i32 %126, %struct.xfs_refcount_irec* %127)
  store i32 0, i32* %4, align 4
  br label %146

129:                                              ; preds = %117, %105, %93, %84, %76, %65, %51
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = call i32 (%struct.xfs_mount*, i8*, i32, ...) @xfs_warn(%struct.xfs_mount* %130, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %131)
  %133 = load %struct.xfs_mount*, %struct.xfs_mount** %8, align 8
  %134 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %135 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %138 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.xfs_refcount_irec*, %struct.xfs_refcount_irec** %6, align 8
  %141 = getelementptr inbounds %struct.xfs_refcount_irec, %struct.xfs_refcount_irec* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = call i32 (%struct.xfs_mount*, i8*, i32, ...) @xfs_warn(%struct.xfs_mount* %133, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %136, i32 %139, i32 %142)
  %144 = load i32, i32* @EFSCORRUPTED, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %129, %118, %30
  %147 = load i32, i32* %4, align 4
  ret i32 %147
}

declare dso_local i32 @xfs_btree_get_rec(%struct.xfs_btree_cur*, %union.xfs_btree_rec**, i32*) #1

declare dso_local i32 @xfs_refcount_btrec_to_irec(%union.xfs_btree_rec*, %struct.xfs_refcount_irec*) #1

declare dso_local i32 @xfs_verify_agbno(%struct.xfs_mount*, i32, i32) #1

declare dso_local i32 @trace_xfs_refcount_get(%struct.xfs_mount*, i32, %struct.xfs_refcount_irec*) #1

declare dso_local i32 @xfs_warn(%struct.xfs_mount*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
