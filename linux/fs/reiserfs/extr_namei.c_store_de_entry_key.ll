; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_store_de_entry_key.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_namei.c_store_de_entry_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_dir_entry = type { i32, %struct.TYPE_8__, %struct.TYPE_9__*, %struct.reiserfs_de_head* }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.reiserfs_de_head = type { i32 }

@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_dir_entry*)* @store_de_entry_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_de_entry_key(%struct.reiserfs_dir_entry* %0) #0 {
  %2 = alloca %struct.reiserfs_dir_entry*, align 8
  %3 = alloca %struct.reiserfs_de_head*, align 8
  store %struct.reiserfs_dir_entry* %0, %struct.reiserfs_dir_entry** %2, align 8
  %4 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %5 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %4, i32 0, i32 3
  %6 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %5, align 8
  %7 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %8 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.reiserfs_de_head, %struct.reiserfs_de_head* %6, i64 %10
  store %struct.reiserfs_de_head* %11, %struct.reiserfs_de_head** %3, align 8
  %12 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %13 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %17 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %16, i32 0, i32 2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = call i64 @ih_entry_count(%struct.TYPE_9__* %18)
  %20 = icmp sge i64 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %24 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %25 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 8
  %27 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %28 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %35 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i8* %33, i8** %37, align 8
  %38 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %39 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %38, i32 0, i32 2
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %46 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i8* %44, i8** %48, align 8
  %49 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %50 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %49, i32 0, i32 1
  %51 = load %struct.reiserfs_de_head*, %struct.reiserfs_de_head** %3, align 8
  %52 = call i32 @deh_offset(%struct.reiserfs_de_head* %51)
  %53 = call i32 @set_cpu_key_k_offset(%struct.TYPE_8__* %50, i32 %52)
  %54 = load %struct.reiserfs_dir_entry*, %struct.reiserfs_dir_entry** %2, align 8
  %55 = getelementptr inbounds %struct.reiserfs_dir_entry, %struct.reiserfs_dir_entry* %54, i32 0, i32 1
  %56 = load i32, i32* @TYPE_DIRENTRY, align 4
  %57 = call i32 @set_cpu_key_k_type(%struct.TYPE_8__* %55, i32 %56)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @ih_entry_count(%struct.TYPE_9__*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @set_cpu_key_k_offset(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @deh_offset(%struct.reiserfs_de_head*) #1

declare dso_local i32 @set_cpu_key_k_type(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
