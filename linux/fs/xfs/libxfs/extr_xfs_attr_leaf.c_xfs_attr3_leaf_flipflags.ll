; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_flipflags.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_flipflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i64, i64, i64, i64, i32, i32, i64, i64, i32 }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32, i32, i8*, i8*, i32, i64 }
%struct.xfs_attr_leaf_name_remote = type { i32, i32, i8*, i8*, i32, i64 }
%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }

@XFS_ATTR_INCOMPLETE = common dso_local global i32 0, align 4
@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_flipflags(%struct.xfs_da_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xfs_da_args*, align 8
  %4 = alloca %struct.xfs_attr_leafblock*, align 8
  %5 = alloca %struct.xfs_attr_leafblock*, align 8
  %6 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %7 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %8 = alloca %struct.xfs_attr_leaf_name_remote*, align 8
  %9 = alloca %struct.xfs_buf*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  %11 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %3, align 8
  %12 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %13 = call i32 @trace_xfs_attr_leaf_flipflags(%struct.xfs_da_args* %12)
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %21 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @xfs_attr3_leaf_read(i32 %16, i32 %19, i64 %22, i32 -1, %struct.xfs_buf** %9)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %1
  %27 = load i32, i32* %11, align 4
  store i32 %27, i32* %2, align 4
  br label %189

28:                                               ; preds = %1
  %29 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %33 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %52

36:                                               ; preds = %28
  %37 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %38 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %44 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @xfs_attr3_leaf_read(i32 %39, i32 %42, i64 %45, i32 -1, %struct.xfs_buf** %10)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %2, align 4
  br label %189

51:                                               ; preds = %36
  br label %54

52:                                               ; preds = %28
  %53 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  store %struct.xfs_buf* %53, %struct.xfs_buf** %10, align 8
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %56 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %55, i32 0, i32 0
  %57 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %56, align 8
  store %struct.xfs_attr_leafblock* %57, %struct.xfs_attr_leafblock** %4, align 8
  %58 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %59 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %58)
  %60 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %61 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %59, i64 %62
  %64 = bitcast %struct.xfs_attr_leaf_name_remote* %63 to %struct.xfs_attr_leaf_entry*
  store %struct.xfs_attr_leaf_entry* %64, %struct.xfs_attr_leaf_entry** %6, align 8
  %65 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %66 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %65, i32 0, i32 0
  %67 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %66, align 8
  store %struct.xfs_attr_leafblock* %67, %struct.xfs_attr_leafblock** %5, align 8
  %68 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %69 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %68)
  %70 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %71 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %69, i64 %72
  %74 = bitcast %struct.xfs_attr_leaf_name_remote* %73 to %struct.xfs_attr_leaf_entry*
  store %struct.xfs_attr_leaf_entry* %74, %struct.xfs_attr_leaf_entry** %7, align 8
  %75 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %6, align 8
  %76 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %79 = and i32 %77, %78
  %80 = call i32 @ASSERT(i32 %79)
  %81 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %82 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %85 = and i32 %83, %84
  %86 = icmp eq i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %6, align 8
  %92 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %99 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %100 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %6, align 8
  %101 = bitcast %struct.xfs_attr_leaf_entry* %100 to %struct.xfs_attr_leaf_name_remote*
  %102 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %99, %struct.xfs_attr_leaf_name_remote* %101, i32 40)
  %103 = call i32 @xfs_trans_log_buf(i32 %97, %struct.xfs_buf* %98, i32 %102)
  %104 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %105 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %142

108:                                              ; preds = %54
  %109 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %6, align 8
  %110 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  %115 = zext i1 %114 to i32
  %116 = call i32 @ASSERT(i32 %115)
  %117 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %118 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %119 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %117, i64 %120)
  store %struct.xfs_attr_leaf_name_remote* %121, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %122 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %123 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %122, i32 0, i32 7
  %124 = load i64, i64* %123, align 8
  %125 = call i8* @cpu_to_be32(i64 %124)
  %126 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %127 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %126, i32 0, i32 3
  store i8* %125, i8** %127, align 8
  %128 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %129 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %128, i32 0, i32 6
  %130 = load i64, i64* %129, align 8
  %131 = call i8* @cpu_to_be32(i64 %130)
  %132 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %133 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %132, i32 0, i32 2
  store i8* %131, i8** %133, align 8
  %134 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %135 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.xfs_buf*, %struct.xfs_buf** %9, align 8
  %138 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %4, align 8
  %139 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %140 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %138, %struct.xfs_attr_leaf_name_remote* %139, i32 40)
  %141 = call i32 @xfs_trans_log_buf(i32 %136, %struct.xfs_buf* %137, i32 %140)
  br label %142

142:                                              ; preds = %108, %54
  %143 = load i32, i32* @XFS_ATTR_INCOMPLETE, align 4
  %144 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %145 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %149 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %148, i32 0, i32 5
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %152 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %153 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %154 = bitcast %struct.xfs_attr_leaf_entry* %153 to %struct.xfs_attr_leaf_name_remote*
  %155 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %152, %struct.xfs_attr_leaf_name_remote* %154, i32 40)
  %156 = call i32 @xfs_trans_log_buf(i32 %150, %struct.xfs_buf* %151, i32 %155)
  %157 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %7, align 8
  %158 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %161 = and i32 %159, %160
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %181

163:                                              ; preds = %142
  %164 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %165 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %166 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %164, i64 %167)
  store %struct.xfs_attr_leaf_name_remote* %168, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %169 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %170 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %169, i32 0, i32 3
  store i8* null, i8** %170, align 8
  %171 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %172 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %171, i32 0, i32 2
  store i8* null, i8** %172, align 8
  %173 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %174 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %173, i32 0, i32 5
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %177 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %5, align 8
  %178 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %8, align 8
  %179 = call i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock* %177, %struct.xfs_attr_leaf_name_remote* %178, i32 40)
  %180 = call i32 @xfs_trans_log_buf(i32 %175, %struct.xfs_buf* %176, i32 %179)
  br label %181

181:                                              ; preds = %163, %142
  %182 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %183 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %182, i32 0, i32 5
  %184 = load %struct.xfs_da_args*, %struct.xfs_da_args** %3, align 8
  %185 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @xfs_trans_roll_inode(i32* %183, i32 %186)
  store i32 %187, i32* %11, align 4
  %188 = load i32, i32* %11, align 4
  store i32 %188, i32* %2, align 4
  br label %189

189:                                              ; preds = %181, %49, %26
  %190 = load i32, i32* %2, align 4
  ret i32 %190
}

declare dso_local i32 @trace_xfs_attr_leaf_flipflags(%struct.xfs_da_args*) #1

declare dso_local i32 @xfs_attr3_leaf_read(i32, i32, i64, i32, %struct.xfs_buf**) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.xfs_buf*, i32) #1

declare dso_local i32 @XFS_DA_LOGRANGE(%struct.xfs_attr_leafblock*, %struct.xfs_attr_leaf_name_remote*, i32) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i32 @xfs_trans_roll_inode(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
