; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_create_new_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_create_new_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_conn = type { i32 }
%struct.fuse_args = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32, %struct.fuse_entry_out* }
%struct.fuse_entry_out = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.fuse_forget_link = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_conn*, %struct.fuse_args*, %struct.inode*, %struct.dentry*, i32)* @create_new_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_new_entry(%struct.fuse_conn* %0, %struct.fuse_args* %1, %struct.inode* %2, %struct.dentry* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fuse_conn*, align 8
  %8 = alloca %struct.fuse_args*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_entry_out, align 4
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.dentry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.fuse_forget_link*, align 8
  store %struct.fuse_conn* %0, %struct.fuse_conn** %7, align 8
  store %struct.fuse_args* %1, %struct.fuse_args** %8, align 8
  store %struct.inode* %2, %struct.inode** %9, align 8
  store %struct.dentry* %3, %struct.dentry** %10, align 8
  store i32 %4, i32* %11, align 4
  %17 = call %struct.fuse_forget_link* (...) @fuse_alloc_forget()
  store %struct.fuse_forget_link* %17, %struct.fuse_forget_link** %16, align 8
  %18 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %16, align 8
  %19 = icmp ne %struct.fuse_forget_link* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %118

23:                                               ; preds = %5
  %24 = call i32 @memset(%struct.fuse_entry_out* %12, i32 0, i32 12)
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = call i32 @get_node_id(%struct.inode* %25)
  %27 = load %struct.fuse_args*, %struct.fuse_args** %8, align 8
  %28 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.fuse_args*, %struct.fuse_args** %8, align 8
  %30 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.fuse_args*, %struct.fuse_args** %8, align 8
  %32 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 12, i32* %35, align 8
  %36 = load %struct.fuse_args*, %struct.fuse_args** %8, align 8
  %37 = getelementptr inbounds %struct.fuse_args, %struct.fuse_args* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store %struct.fuse_entry_out* %12, %struct.fuse_entry_out** %40, align 8
  %41 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %42 = load %struct.fuse_args*, %struct.fuse_args** %8, align 8
  %43 = call i32 @fuse_simple_request(%struct.fuse_conn* %41, %struct.fuse_args* %42)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %23
  br label %114

47:                                               ; preds = %23
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %15, align 4
  %50 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @invalid_nodeid(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %47
  br label %114

55:                                               ; preds = %47
  %56 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %11, align 4
  %60 = xor i32 %58, %59
  %61 = load i32, i32* @S_IFMT, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %114

65:                                               ; preds = %55
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = getelementptr inbounds %struct.inode, %struct.inode* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 1
  %74 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %12)
  %75 = call %struct.inode* @fuse_iget(i32 %68, i32 %70, i32 %72, %struct.TYPE_4__* %73, i32 %74, i32 0)
  store %struct.inode* %75, %struct.inode** %13, align 8
  %76 = load %struct.inode*, %struct.inode** %13, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %86, label %78

78:                                               ; preds = %65
  %79 = load %struct.fuse_conn*, %struct.fuse_conn** %7, align 8
  %80 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %16, align 8
  %81 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %12, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @fuse_queue_forget(%struct.fuse_conn* %79, %struct.fuse_forget_link* %80, i32 %82, i32 1)
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %6, align 4
  br label %118

86:                                               ; preds = %65
  %87 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %16, align 8
  %88 = call i32 @kfree(%struct.fuse_forget_link* %87)
  %89 = load %struct.dentry*, %struct.dentry** %10, align 8
  %90 = call i32 @d_drop(%struct.dentry* %89)
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = load %struct.dentry*, %struct.dentry** %10, align 8
  %93 = call %struct.dentry* @d_splice_alias(%struct.inode* %91, %struct.dentry* %92)
  store %struct.dentry* %93, %struct.dentry** %14, align 8
  %94 = load %struct.dentry*, %struct.dentry** %14, align 8
  %95 = call i64 @IS_ERR(%struct.dentry* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.dentry*, %struct.dentry** %14, align 8
  %99 = call i32 @PTR_ERR(%struct.dentry* %98)
  store i32 %99, i32* %6, align 4
  br label %118

100:                                              ; preds = %86
  %101 = load %struct.dentry*, %struct.dentry** %14, align 8
  %102 = icmp ne %struct.dentry* %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.dentry*, %struct.dentry** %14, align 8
  %105 = call i32 @fuse_change_entry_timeout(%struct.dentry* %104, %struct.fuse_entry_out* %12)
  %106 = load %struct.dentry*, %struct.dentry** %14, align 8
  %107 = call i32 @dput(%struct.dentry* %106)
  br label %111

108:                                              ; preds = %100
  %109 = load %struct.dentry*, %struct.dentry** %10, align 8
  %110 = call i32 @fuse_change_entry_timeout(%struct.dentry* %109, %struct.fuse_entry_out* %12)
  br label %111

111:                                              ; preds = %108, %103
  %112 = load %struct.inode*, %struct.inode** %9, align 8
  %113 = call i32 @fuse_dir_changed(%struct.inode* %112)
  store i32 0, i32* %6, align 4
  br label %118

114:                                              ; preds = %64, %54, %46
  %115 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %16, align 8
  %116 = call i32 @kfree(%struct.fuse_forget_link* %115)
  %117 = load i32, i32* %15, align 4
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %114, %111, %97, %78, %20
  %119 = load i32, i32* %6, align 4
  ret i32 %119
}

declare dso_local %struct.fuse_forget_link* @fuse_alloc_forget(...) #1

declare dso_local i32 @memset(%struct.fuse_entry_out*, i32, i32) #1

declare dso_local i32 @get_node_id(%struct.inode*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, %struct.fuse_args*) #1

declare dso_local i64 @invalid_nodeid(i32) #1

declare dso_local %struct.inode* @fuse_iget(i32, i32, i32, %struct.TYPE_4__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_queue_forget(%struct.fuse_conn*, %struct.fuse_forget_link*, i32, i32) #1

declare dso_local i32 @kfree(%struct.fuse_forget_link*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @fuse_change_entry_timeout(%struct.dentry*, %struct.fuse_entry_out*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @fuse_dir_changed(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
