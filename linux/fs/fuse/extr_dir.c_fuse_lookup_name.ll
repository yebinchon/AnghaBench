; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup_name.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_dir.c_fuse_lookup_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.qstr = type { i64 }
%struct.fuse_entry_out = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.inode = type { i32 }
%struct.fuse_conn = type { i32 }
%struct.fuse_forget_link = type { i32 }

@args = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fuse_lookup_name(%struct.super_block* %0, i32 %1, %struct.qstr* %2, %struct.fuse_entry_out* %3, %struct.inode** %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qstr*, align 8
  %9 = alloca %struct.fuse_entry_out*, align 8
  %10 = alloca %struct.inode**, align 8
  %11 = alloca %struct.fuse_conn*, align 8
  %12 = alloca %struct.fuse_forget_link*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.qstr* %2, %struct.qstr** %8, align 8
  store %struct.fuse_entry_out* %3, %struct.fuse_entry_out** %9, align 8
  store %struct.inode** %4, %struct.inode*** %10, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block* %15)
  store %struct.fuse_conn* %16, %struct.fuse_conn** %11, align 8
  %17 = load i32, i32* @args, align 4
  %18 = call i32 @FUSE_ARGS(i32 %17)
  %19 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* null, %struct.inode** %19, align 8
  %20 = load i32, i32* @ENAMETOOLONG, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %14, align 4
  %22 = load %struct.qstr*, %struct.qstr** %8, align 8
  %23 = getelementptr inbounds %struct.qstr, %struct.qstr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FUSE_NAME_MAX, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %100

28:                                               ; preds = %5
  %29 = call %struct.fuse_forget_link* (...) @fuse_alloc_forget()
  store %struct.fuse_forget_link* %29, %struct.fuse_forget_link** %12, align 8
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %14, align 4
  %32 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %33 = icmp ne %struct.fuse_forget_link* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %100

35:                                               ; preds = %28
  %36 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %37 = call i32 @fuse_get_attr_version(%struct.fuse_conn* %36)
  store i32 %37, i32* %13, align 4
  %38 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.qstr*, %struct.qstr** %8, align 8
  %41 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %42 = call i32 @fuse_lookup_init(%struct.fuse_conn* %38, i32* @args, i32 %39, %struct.qstr* %40, %struct.fuse_entry_out* %41)
  %43 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %44 = call i32 @fuse_simple_request(%struct.fuse_conn* %43, i32* @args)
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %35
  %48 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %49 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %35
  br label %97

53:                                               ; preds = %47
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %14, align 4
  %56 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %57 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %53
  br label %97

61:                                               ; preds = %53
  %62 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %63 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @fuse_valid_type(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %97

69:                                               ; preds = %61
  %70 = load %struct.super_block*, %struct.super_block** %6, align 8
  %71 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %72 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %75 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %78 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %77, i32 0, i32 1
  %79 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %80 = call i32 @entry_attr_timeout(%struct.fuse_entry_out* %79)
  %81 = load i32, i32* %13, align 4
  %82 = call %struct.inode* @fuse_iget(%struct.super_block* %70, i32 %73, i32 %76, %struct.TYPE_2__* %78, i32 %80, i32 %81)
  %83 = load %struct.inode**, %struct.inode*** %10, align 8
  store %struct.inode* %82, %struct.inode** %83, align 8
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %14, align 4
  %86 = load %struct.inode**, %struct.inode*** %10, align 8
  %87 = load %struct.inode*, %struct.inode** %86, align 8
  %88 = icmp ne %struct.inode* %87, null
  br i1 %88, label %96, label %89

89:                                               ; preds = %69
  %90 = load %struct.fuse_conn*, %struct.fuse_conn** %11, align 8
  %91 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %92 = load %struct.fuse_entry_out*, %struct.fuse_entry_out** %9, align 8
  %93 = getelementptr inbounds %struct.fuse_entry_out, %struct.fuse_entry_out* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @fuse_queue_forget(%struct.fuse_conn* %90, %struct.fuse_forget_link* %91, i32 %94, i32 1)
  br label %100

96:                                               ; preds = %69
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %96, %68, %60, %52
  %98 = load %struct.fuse_forget_link*, %struct.fuse_forget_link** %12, align 8
  %99 = call i32 @kfree(%struct.fuse_forget_link* %98)
  br label %100

100:                                              ; preds = %97, %89, %34, %27
  %101 = load i32, i32* %14, align 4
  ret i32 %101
}

declare dso_local %struct.fuse_conn* @get_fuse_conn_super(%struct.super_block*) #1

declare dso_local i32 @FUSE_ARGS(i32) #1

declare dso_local %struct.fuse_forget_link* @fuse_alloc_forget(...) #1

declare dso_local i32 @fuse_get_attr_version(%struct.fuse_conn*) #1

declare dso_local i32 @fuse_lookup_init(%struct.fuse_conn*, i32*, i32, %struct.qstr*, %struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_simple_request(%struct.fuse_conn*, i32*) #1

declare dso_local i32 @fuse_valid_type(i32) #1

declare dso_local %struct.inode* @fuse_iget(%struct.super_block*, i32, i32, %struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @entry_attr_timeout(%struct.fuse_entry_out*) #1

declare dso_local i32 @fuse_queue_forget(%struct.fuse_conn*, %struct.fuse_forget_link*, i32, i32) #1

declare dso_local i32 @kfree(%struct.fuse_forget_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
