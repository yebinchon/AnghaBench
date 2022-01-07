; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_removename.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_node_removename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.xfs_da_state_blk = type { i64, i32, i32 }
%struct.xfs_da_state = type { i32, %struct.TYPE_4__, i32, i32, %struct.xfs_da_args* }
%struct.TYPE_4__ = type { i32, %struct.xfs_da_state_blk* }

@EEXIST = common dso_local global i32 0, align 4
@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_dir2_node_removename(%struct.xfs_da_args* %0) #0 {
  %2 = alloca %struct.xfs_da_args*, align 8
  %3 = alloca %struct.xfs_da_state_blk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xfs_da_state*, align 8
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %2, align 8
  %7 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %8 = call i32 @trace_xfs_dir2_node_removename(%struct.xfs_da_args* %7)
  %9 = call %struct.xfs_da_state* (...) @xfs_da_state_alloc()
  store %struct.xfs_da_state* %9, %struct.xfs_da_state** %6, align 8
  %10 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %11 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %12 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %11, i32 0, i32 4
  store %struct.xfs_da_args* %10, %struct.xfs_da_args** %12, align 8
  %13 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %14 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %19 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %21 = call i32 @xfs_da3_node_lookup_int(%struct.xfs_da_state* %20, i32* %5)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %91

25:                                               ; preds = %1
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @EEXIST, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %4, align 4
  br label %91

32:                                               ; preds = %25
  %33 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %35, align 8
  %37 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %38 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %36, i64 %42
  store %struct.xfs_da_state_blk* %43, %struct.xfs_da_state_blk** %3, align 8
  %44 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %3, align 8
  %45 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %48 = icmp eq i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i32 @ASSERT(i32 %49)
  %51 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %52 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @ASSERT(i32 %53)
  %55 = load %struct.xfs_da_args*, %struct.xfs_da_args** %2, align 8
  %56 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %3, align 8
  %57 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %3, align 8
  %60 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %63 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %62, i32 0, i32 2
  %64 = call i32 @xfs_dir2_leafn_remove(%struct.xfs_da_args* %55, i32 %58, i32 %61, i32* %63, i32* %5)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %32
  br label %91

68:                                               ; preds = %32
  %69 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %70 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %71 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %70, i32 0, i32 1
  %72 = call i32 @xfs_da3_fixhashpath(%struct.xfs_da_state* %69, %struct.TYPE_4__* %71)
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %68
  %76 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %77 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp sgt i32 %79, 1
  br i1 %80, label %81, label %84

81:                                               ; preds = %75
  %82 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %83 = call i32 @xfs_da3_join(%struct.xfs_da_state* %82)
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %81, %75, %68
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %90, label %87

87:                                               ; preds = %84
  %88 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %89 = call i32 @xfs_dir2_node_to_leaf(%struct.xfs_da_state* %88)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %84
  br label %91

91:                                               ; preds = %90, %67, %30, %24
  %92 = load %struct.xfs_da_state*, %struct.xfs_da_state** %6, align 8
  %93 = call i32 @xfs_da_state_free(%struct.xfs_da_state* %92)
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local i32 @trace_xfs_dir2_node_removename(%struct.xfs_da_args*) #1

declare dso_local %struct.xfs_da_state* @xfs_da_state_alloc(...) #1

declare dso_local i32 @xfs_da3_node_lookup_int(%struct.xfs_da_state*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir2_leafn_remove(%struct.xfs_da_args*, i32, i32, i32*, i32*) #1

declare dso_local i32 @xfs_da3_fixhashpath(%struct.xfs_da_state*, %struct.TYPE_4__*) #1

declare dso_local i32 @xfs_da3_join(%struct.xfs_da_state*) #1

declare dso_local i32 @xfs_dir2_node_to_leaf(%struct.xfs_da_state*) #1

declare dso_local i32 @xfs_da_state_free(%struct.xfs_da_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
