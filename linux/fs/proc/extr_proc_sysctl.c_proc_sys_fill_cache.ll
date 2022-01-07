; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_fill_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_proc_sysctl.c_proc_sys_fill_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32, i32, i32 }
%struct.dir_context = type { i32 }
%struct.ctl_table_header = type { i32 }
%struct.ctl_table = type { i32 }
%struct.dentry = type { i32, i32, i32 }
%struct.qstr = type { i32, i32, i32 }

@DT_UNKNOWN = common dso_local global i32 0, align 4
@wq = common dso_local global i32 0, align 4
@proc_sys_dentry_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*, %struct.ctl_table_header*, %struct.ctl_table*)* @proc_sys_fill_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @proc_sys_fill_cache(%struct.file* %0, %struct.dir_context* %1, %struct.ctl_table_header* %2, %struct.ctl_table* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.dir_context*, align 8
  %8 = alloca %struct.ctl_table_header*, align 8
  %9 = alloca %struct.ctl_table*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.qstr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dentry*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.dir_context* %1, %struct.dir_context** %7, align 8
  store %struct.ctl_table_header* %2, %struct.ctl_table_header** %8, align 8
  store %struct.ctl_table* %3, %struct.ctl_table** %9, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = getelementptr inbounds %struct.file, %struct.file* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  %21 = bitcast %struct.inode* %20 to %struct.dentry*
  store %struct.dentry* %21, %struct.dentry** %11, align 8
  store i32 0, i32* %14, align 4
  %22 = load i32, i32* @DT_UNKNOWN, align 4
  store i32 %22, i32* %15, align 4
  %23 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %24 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %28 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @strlen(i32 %29)
  %31 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.dentry*, %struct.dentry** %11, align 8
  %33 = bitcast %struct.dentry* %32 to %struct.inode*
  %34 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @full_name_hash(%struct.inode* %33, i32 %35, i32 %37)
  %39 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.dentry*, %struct.dentry** %11, align 8
  %41 = bitcast %struct.dentry* %40 to %struct.inode*
  %42 = call %struct.inode* @d_lookup(%struct.inode* %41, %struct.qstr* %13)
  %43 = bitcast %struct.inode* %42 to %struct.dentry*
  store %struct.dentry* %43, %struct.dentry** %10, align 8
  %44 = load %struct.dentry*, %struct.dentry** %10, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %112, label %46

46:                                               ; preds = %4
  %47 = load i32, i32* @wq, align 4
  %48 = call i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32 %47)
  %49 = load %struct.dentry*, %struct.dentry** %11, align 8
  %50 = bitcast %struct.dentry* %49 to %struct.inode*
  %51 = call %struct.inode* @d_alloc_parallel(%struct.inode* %50, %struct.qstr* %13, i32* @wq)
  %52 = bitcast %struct.inode* %51 to %struct.dentry*
  store %struct.dentry* %52, %struct.dentry** %10, align 8
  %53 = load %struct.dentry*, %struct.dentry** %10, align 8
  %54 = bitcast %struct.dentry* %53 to %struct.inode*
  %55 = call i64 @IS_ERR(%struct.inode* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 0, i32* %5, align 4
  br label %134

58:                                               ; preds = %46
  %59 = load %struct.dentry*, %struct.dentry** %10, align 8
  %60 = bitcast %struct.dentry* %59 to %struct.inode*
  %61 = call i64 @d_in_lookup(%struct.inode* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %111

63:                                               ; preds = %58
  %64 = load %struct.dentry*, %struct.dentry** %11, align 8
  %65 = getelementptr inbounds %struct.dentry, %struct.dentry* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ctl_table_header*, %struct.ctl_table_header** %8, align 8
  %68 = load %struct.ctl_table*, %struct.ctl_table** %9, align 8
  %69 = call %struct.inode* @proc_sys_make_inode(i32 %66, %struct.ctl_table_header* %67, %struct.ctl_table* %68)
  store %struct.inode* %69, %struct.inode** %12, align 8
  %70 = load %struct.inode*, %struct.inode** %12, align 8
  %71 = call i64 @IS_ERR(%struct.inode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %63
  %74 = load %struct.dentry*, %struct.dentry** %10, align 8
  %75 = bitcast %struct.dentry* %74 to %struct.inode*
  %76 = call i32 @d_lookup_done(%struct.inode* %75)
  %77 = load %struct.dentry*, %struct.dentry** %10, align 8
  %78 = bitcast %struct.dentry* %77 to %struct.inode*
  %79 = call i32 @dput(%struct.inode* %78)
  store i32 0, i32* %5, align 4
  br label %134

80:                                               ; preds = %63
  %81 = load %struct.dentry*, %struct.dentry** %10, align 8
  %82 = bitcast %struct.dentry* %81 to %struct.inode*
  %83 = call i32 @d_set_d_op(%struct.inode* %82, i32* @proc_sys_dentry_operations)
  %84 = load %struct.inode*, %struct.inode** %12, align 8
  %85 = load %struct.dentry*, %struct.dentry** %10, align 8
  %86 = bitcast %struct.dentry* %85 to %struct.inode*
  %87 = call %struct.inode* @d_splice_alias(%struct.inode* %84, %struct.inode* %86)
  %88 = bitcast %struct.inode* %87 to %struct.dentry*
  store %struct.dentry* %88, %struct.dentry** %16, align 8
  %89 = load %struct.dentry*, %struct.dentry** %10, align 8
  %90 = bitcast %struct.dentry* %89 to %struct.inode*
  %91 = call i32 @d_lookup_done(%struct.inode* %90)
  %92 = load %struct.dentry*, %struct.dentry** %16, align 8
  %93 = bitcast %struct.dentry* %92 to %struct.inode*
  %94 = call i64 @unlikely(%struct.inode* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %110

96:                                               ; preds = %80
  %97 = load %struct.dentry*, %struct.dentry** %16, align 8
  %98 = bitcast %struct.dentry* %97 to %struct.inode*
  %99 = call i64 @IS_ERR(%struct.inode* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load %struct.dentry*, %struct.dentry** %10, align 8
  %103 = bitcast %struct.dentry* %102 to %struct.inode*
  %104 = call i32 @dput(%struct.inode* %103)
  store i32 0, i32* %5, align 4
  br label %134

105:                                              ; preds = %96
  %106 = load %struct.dentry*, %struct.dentry** %10, align 8
  %107 = bitcast %struct.dentry* %106 to %struct.inode*
  %108 = call i32 @dput(%struct.inode* %107)
  %109 = load %struct.dentry*, %struct.dentry** %16, align 8
  store %struct.dentry* %109, %struct.dentry** %10, align 8
  br label %110

110:                                              ; preds = %105, %80
  br label %111

111:                                              ; preds = %110, %58
  br label %112

112:                                              ; preds = %111, %4
  %113 = load %struct.dentry*, %struct.dentry** %10, align 8
  %114 = bitcast %struct.dentry* %113 to %struct.inode*
  %115 = call %struct.inode* @d_inode(%struct.inode* %114)
  store %struct.inode* %115, %struct.inode** %12, align 8
  %116 = load %struct.inode*, %struct.inode** %12, align 8
  %117 = getelementptr inbounds %struct.inode, %struct.inode* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  store i32 %118, i32* %14, align 4
  %119 = load %struct.inode*, %struct.inode** %12, align 8
  %120 = getelementptr inbounds %struct.inode, %struct.inode* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = ashr i32 %121, 12
  store i32 %122, i32* %15, align 4
  %123 = load %struct.dentry*, %struct.dentry** %10, align 8
  %124 = bitcast %struct.dentry* %123 to %struct.inode*
  %125 = call i32 @dput(%struct.inode* %124)
  %126 = load %struct.dir_context*, %struct.dir_context** %7, align 8
  %127 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.qstr, %struct.qstr* %13, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* %15, align 4
  %133 = call i32 @dir_emit(%struct.dir_context* %126, i32 %128, i32 %130, i32 %131, i32 %132)
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %112, %101, %73, %57
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @full_name_hash(%struct.inode*, i32, i32) #1

declare dso_local %struct.inode* @d_lookup(%struct.inode*, %struct.qstr*) #1

declare dso_local i32 @DECLARE_WAIT_QUEUE_HEAD_ONSTACK(i32) #1

declare dso_local %struct.inode* @d_alloc_parallel(%struct.inode*, %struct.qstr*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i64 @d_in_lookup(%struct.inode*) #1

declare dso_local %struct.inode* @proc_sys_make_inode(i32, %struct.ctl_table_header*, %struct.ctl_table*) #1

declare dso_local i32 @d_lookup_done(%struct.inode*) #1

declare dso_local i32 @dput(%struct.inode*) #1

declare dso_local i32 @d_set_d_op(%struct.inode*, i32*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

declare dso_local i64 @unlikely(%struct.inode*) #1

declare dso_local %struct.inode* @d_inode(%struct.inode*) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
