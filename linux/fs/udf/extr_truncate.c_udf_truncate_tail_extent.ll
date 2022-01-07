; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_truncate_tail_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_truncate.c_udf_truncate_tail_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.extent_position = type { i32, i32 }
%struct.kernel_lb_addr = type { i64 }
%struct.udf_inode_info = type { i64, i64 }

@ICBTAG_FLAG_AD_IN_ICB = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_SHORT = common dso_local global i64 0, align 8
@ICBTAG_FLAG_AD_LONG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [80 x i8] c"Too long extent after EOF in inode %u: i_size: %lld lbcount: %lld extent %u+%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Extent after EOF in inode %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @udf_truncate_tail_extent(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.extent_position, align 4
  %4 = alloca %struct.kernel_lb_addr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.udf_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %12 = bitcast %struct.extent_position* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 8, i1 false)
  store i64 0, i64* %7, align 8
  store i32 -1, i32* %8, align 4
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = call %struct.udf_inode_info* @UDF_I(%struct.inode* %13)
  store %struct.udf_inode_info* %14, %struct.udf_inode_info** %11, align 8
  %15 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %16 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @ICBTAG_FLAG_AD_IN_ICB, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %25 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20, %1
  br label %141

29:                                               ; preds = %20
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %141

35:                                               ; preds = %29
  %36 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %37 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @ICBTAG_FLAG_AD_SHORT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 4, i32* %10, align 4
  br label %52

42:                                               ; preds = %35
  %43 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %44 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @ICBTAG_FLAG_AD_LONG, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  store i32 4, i32* %10, align 4
  br label %51

49:                                               ; preds = %42
  %50 = call i32 (...) @BUG()
  br label %51

51:                                               ; preds = %49, %48
  br label %52

52:                                               ; preds = %51, %41
  br label %53

53:                                               ; preds = %131, %52
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = call i32 @udf_next_aext(%struct.inode* %54, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i64* %5, i32 1)
  store i32 %55, i32* %9, align 4
  %56 = icmp ne i32 %55, -1
  br i1 %56, label %57, label %132

57:                                               ; preds = %53
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %8, align 4
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* %7, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.inode*, %struct.inode** %2, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %131

67:                                               ; preds = %57
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 3
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp sge i64 %72, %77
  br i1 %78, label %79, label %97

79:                                               ; preds = %67
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = getelementptr inbounds %struct.inode, %struct.inode* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load %struct.inode*, %struct.inode** %2, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %7, align 8
  %91 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %4, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %5, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @udf_warn(%struct.TYPE_3__* %82, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %86, i64 %89, i64 %90, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %79, %67
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load %struct.inode*, %struct.inode** %2, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %99, %102
  %104 = sub nsw i64 %98, %103
  store i64 %104, i64* %6, align 8
  %105 = load i32, i32* %10, align 4
  %106 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = sub nsw i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.inode*, %struct.inode** %2, align 8
  %110 = load i32, i32* %8, align 4
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* %6, align 8
  %113 = call i32 @extent_trunc(%struct.inode* %109, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i32 %110, i64 %111, i64 %112)
  %114 = load i32, i32* %10, align 4
  %115 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %114
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %2, align 8
  %119 = call i32 @udf_next_aext(%struct.inode* %118, %struct.extent_position* %3, %struct.kernel_lb_addr* %4, i64* %5, i32 1)
  %120 = icmp ne i32 %119, -1
  br i1 %120, label %121, label %130

121:                                              ; preds = %97
  %122 = load %struct.inode*, %struct.inode** %2, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 3
  %124 = load %struct.TYPE_3__*, %struct.TYPE_3__** %123, align 8
  %125 = load %struct.inode*, %struct.inode** %2, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @udf_err(%struct.TYPE_3__* %124, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %121, %97
  br label %132

131:                                              ; preds = %57
  br label %53

132:                                              ; preds = %130, %53
  %133 = load %struct.inode*, %struct.inode** %2, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.udf_inode_info*, %struct.udf_inode_info** %11, align 8
  %137 = getelementptr inbounds %struct.udf_inode_info, %struct.udf_inode_info* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %3, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @brelse(i32 %139)
  br label %141

141:                                              ; preds = %132, %34, %28
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.udf_inode_info* @UDF_I(%struct.inode*) #2

declare dso_local i32 @BUG(...) #2

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i64*, i32) #2

declare dso_local i32 @udf_warn(%struct.TYPE_3__*, i8*, i32, i64, i64, i32, i32) #2

declare dso_local i32 @extent_trunc(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i64, i64) #2

declare dso_local i32 @udf_err(%struct.TYPE_3__*, i8*, i32) #2

declare dso_local i32 @brelse(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
