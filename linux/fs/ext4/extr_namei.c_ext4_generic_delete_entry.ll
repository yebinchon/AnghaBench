; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_generic_delete_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_namei.c_ext4_generic_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ext4_dir_entry_2 = type { i32, i64 }
%struct.buffer_head = type { i32, i32 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_generic_delete_entry(i32* %0, %struct.inode* %1, %struct.ext4_dir_entry_2* %2, %struct.buffer_head* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  %12 = alloca %struct.buffer_head*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.ext4_dir_entry_2*, align 8
  %17 = alloca %struct.ext4_dir_entry_2*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.ext4_dir_entry_2* %2, %struct.ext4_dir_entry_2** %11, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %20 = load %struct.inode*, %struct.inode** %10, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store %struct.ext4_dir_entry_2* null, %struct.ext4_dir_entry_2** %17, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = bitcast i8* %25 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %26, %struct.ext4_dir_entry_2** %16, align 8
  br label %27

27:                                               ; preds = %78, %7
  %28 = load i32, i32* %19, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load i32, i32* %15, align 4
  %31 = sub nsw i32 %29, %30
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %92

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %10, align 8
  %35 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %36 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %38 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.buffer_head*, %struct.buffer_head** %12, align 8
  %41 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %19, align 4
  %44 = call i64 @ext4_check_dir_entry(%struct.inode* %34, i32* null, %struct.ext4_dir_entry_2* %35, %struct.buffer_head* %36, i32 %39, i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EFSCORRUPTED, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %8, align 4
  br label %95

49:                                               ; preds = %33
  %50 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %51 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %52 = icmp eq %struct.ext4_dir_entry_2* %50, %51
  br i1 %52, label %53, label %78

53:                                               ; preds = %49
  %54 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %17, align 8
  %55 = icmp ne %struct.ext4_dir_entry_2* %54, null
  br i1 %55, label %56, label %72

56:                                               ; preds = %53
  %57 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %17, align 8
  %58 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %18, align 4
  %61 = call i64 @ext4_rec_len_from_disk(i32 %59, i32 %60)
  %62 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %63 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %18, align 4
  %66 = call i64 @ext4_rec_len_from_disk(i32 %64, i32 %65)
  %67 = add nsw i64 %61, %66
  %68 = load i32, i32* %18, align 4
  %69 = call i32 @ext4_rec_len_to_disk(i64 %67, i32 %68)
  %70 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %17, align 8
  %71 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %75

72:                                               ; preds = %53
  %73 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %74 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %56
  %76 = load %struct.inode*, %struct.inode** %10, align 8
  %77 = call i32 @inode_inc_iversion(%struct.inode* %76)
  store i32 0, i32* %8, align 4
  br label %95

78:                                               ; preds = %49
  %79 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %80 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %18, align 4
  %83 = call i64 @ext4_rec_len_from_disk(i32 %81, i32 %82)
  %84 = load i32, i32* %19, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  %88 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  store %struct.ext4_dir_entry_2* %88, %struct.ext4_dir_entry_2** %17, align 8
  %89 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %16, align 8
  %90 = load i32, i32* %18, align 4
  %91 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %89, i32 %90)
  store %struct.ext4_dir_entry_2* %91, %struct.ext4_dir_entry_2** %16, align 8
  br label %27

92:                                               ; preds = %27
  %93 = load i32, i32* @ENOENT, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %95

95:                                               ; preds = %92, %75, %46
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local i64 @ext4_check_dir_entry(%struct.inode*, i32*, %struct.ext4_dir_entry_2*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ext4_rec_len_to_disk(i64, i32) #1

declare dso_local i64 @ext4_rec_len_from_disk(i32, i32) #1

declare dso_local i32 @inode_inc_iversion(%struct.inode*) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
