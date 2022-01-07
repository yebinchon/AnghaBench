; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_check_dir_empty.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_check_dir_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_dent_node = type { i32 }
%union.ubifs_key = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_check_dir_empty(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ubifs_info*, align 8
  %4 = alloca %struct.fscrypt_name, align 4
  %5 = alloca %struct.ubifs_dent_node*, align 8
  %6 = alloca %union.ubifs_key, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  store %struct.ubifs_info* %12, %struct.ubifs_info** %3, align 8
  %13 = bitcast %struct.fscrypt_name* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %13, i8 0, i64 4, i1 false)
  %14 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @lowest_dent_key(%struct.ubifs_info* %14, %union.ubifs_key* %6, i32 %17)
  %19 = load %struct.ubifs_info*, %struct.ubifs_info** %3, align 8
  %20 = call %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info* %19, %union.ubifs_key* %6, %struct.fscrypt_name* %4)
  store %struct.ubifs_dent_node* %20, %struct.ubifs_dent_node** %5, align 8
  %21 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %22 = call i64 @IS_ERR(%struct.ubifs_dent_node* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %1
  %25 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %26 = call i32 @PTR_ERR(%struct.ubifs_dent_node* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = sub nsw i32 0, %28
  %30 = icmp eq i32 %27, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %32

32:                                               ; preds = %31, %24
  br label %38

33:                                               ; preds = %1
  %34 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %5, align 8
  %35 = call i32 @kfree(%struct.ubifs_dent_node* %34)
  %36 = load i32, i32* @ENOTEMPTY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %32
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lowest_dent_key(%struct.ubifs_info*, %union.ubifs_key*, i32) #2

declare dso_local %struct.ubifs_dent_node* @ubifs_tnc_next_ent(%struct.ubifs_info*, %union.ubifs_key*, %struct.fscrypt_name*) #2

declare dso_local i64 @IS_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i32 @PTR_ERR(%struct.ubifs_dent_node*) #2

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
