; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_inode.c_proc_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.inode = type { %struct.TYPE_4__*, i64, i64, i64, i32, i32, i32, i32, i32, i32 }
%struct.super_block = type { i32 }
%struct.proc_dir_entry = type { %struct.TYPE_4__*, i64, i64, i64, i32, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.proc_dir_entry* }

@proc_reg_file_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@proc_reg_file_ops_no_compat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @proc_get_inode(%struct.super_block* %0, %struct.proc_dir_entry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.proc_dir_entry*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.proc_dir_entry* %1, %struct.proc_dir_entry** %5, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.inode* @new_inode_pseudo(%struct.super_block* %7)
  store %struct.inode* %8, %struct.inode** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %6, align 8
  %10 = icmp ne %struct.inode* %9, null
  br i1 %10, label %11, label %113

11:                                               ; preds = %2
  %12 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %13 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 9
  store i32 %14, i32* %16, align 4
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = call i32 @current_time(%struct.inode* %17)
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 6
  store i32 %18, i32* %20, align 8
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 7
  store i32 %18, i32* %22, align 4
  %23 = load %struct.inode*, %struct.inode** %6, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 8
  store i32 %18, i32* %24, align 8
  %25 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.TYPE_5__* @PROC_I(%struct.inode* %26)
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  store %struct.proc_dir_entry* %25, %struct.proc_dir_entry** %28, align 8
  %29 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %30 = call i64 @is_empty_pde(%struct.proc_dir_entry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %11
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = call i32 @make_empty_dir_inode(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %35, %struct.inode** %3, align 8
  br label %118

36:                                               ; preds = %11
  %37 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %38 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %37, i32 0, i32 6
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %36
  %42 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %43 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.inode*, %struct.inode** %6, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %48 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.inode*, %struct.inode** %6, align 8
  %51 = getelementptr inbounds %struct.inode, %struct.inode* %50, i32 0, i32 5
  store i32 %49, i32* %51, align 4
  %52 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %53 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 4
  store i32 %54, i32* %56, align 8
  br label %57

57:                                               ; preds = %41, %36
  %58 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %59 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %64 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %63, i32 0, i32 3
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 3
  store i64 %65, i64* %67, align 8
  br label %68

68:                                               ; preds = %62, %57
  %69 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %70 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %76 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @set_nlink(%struct.inode* %74, i64 %77)
  br label %79

79:                                               ; preds = %73, %68
  %80 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %81 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i32 @WARN_ON(i32 %85)
  %87 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %88 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.inode*, %struct.inode** %6, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 2
  store i64 %89, i64* %91, align 8
  %92 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %93 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = icmp ne %struct.TYPE_4__* %94, null
  br i1 %95, label %96, label %112

96:                                               ; preds = %79
  %97 = load %struct.inode*, %struct.inode** %6, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = call i64 @S_ISREG(i64 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.inode*, %struct.inode** %6, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  store %struct.TYPE_4__* @proc_reg_file_ops, %struct.TYPE_4__** %104, align 8
  br label %111

105:                                              ; preds = %96
  %106 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %107 = getelementptr inbounds %struct.proc_dir_entry, %struct.proc_dir_entry* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 0
  store %struct.TYPE_4__* %108, %struct.TYPE_4__** %110, align 8
  br label %111

111:                                              ; preds = %105, %102
  br label %112

112:                                              ; preds = %111, %79
  br label %116

113:                                              ; preds = %2
  %114 = load %struct.proc_dir_entry*, %struct.proc_dir_entry** %5, align 8
  %115 = call i32 @pde_put(%struct.proc_dir_entry* %114)
  br label %116

116:                                              ; preds = %113, %112
  %117 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %117, %struct.inode** %3, align 8
  br label %118

118:                                              ; preds = %116, %32
  %119 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %119
}

declare dso_local %struct.inode* @new_inode_pseudo(%struct.super_block*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local %struct.TYPE_5__* @PROC_I(%struct.inode*) #1

declare dso_local i64 @is_empty_pde(%struct.proc_dir_entry*) #1

declare dso_local i32 @make_empty_dir_inode(%struct.inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i64) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @S_ISREG(i64) #1

declare dso_local i32 @pde_put(%struct.proc_dir_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
