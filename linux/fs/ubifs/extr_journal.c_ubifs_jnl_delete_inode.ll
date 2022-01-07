; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_delete_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_journal.c_ubifs_jnl_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i64, i32 }
%struct.inode = type { i64, i32 }
%struct.ubifs_inode = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_jnl_delete_inode(%struct.ubifs_info* %0, %struct.inode* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ubifs_inode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %5, align 8
  %9 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %8)
  store %struct.ubifs_inode* %9, %struct.ubifs_inode** %7, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @ubifs_assert(%struct.ubifs_info* %10, i32 %15)
  %17 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %18 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %23 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %24, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %21, %2
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %30, %struct.inode* %31)
  store i32 %32, i32* %3, align 4
  br label %74

33:                                               ; preds = %21
  %34 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %35 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %34, i32 0, i32 1
  %36 = call i32 @down_read(i32* %35)
  %37 = load %struct.ubifs_inode*, %struct.ubifs_inode** %7, align 8
  %38 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %41 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %33
  %45 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %46 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %45, i32 0, i32 1
  %47 = call i32 @up_read(i32* %46)
  %48 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i32 @ubifs_jnl_write_inode(%struct.ubifs_info* %48, %struct.inode* %49)
  store i32 %50, i32* %3, align 4
  br label %74

51:                                               ; preds = %33
  %52 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @ubifs_tnc_remove_ino(%struct.ubifs_info* %52, i32 %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %60, i32 %61)
  br label %69

63:                                               ; preds = %51
  %64 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @ubifs_delete_orphan(%struct.ubifs_info* %64, i32 %67)
  br label %69

69:                                               ; preds = %63, %59
  %70 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %71 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %70, i32 0, i32 1
  %72 = call i32 @up_read(i32* %71)
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %44, %29
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_jnl_write_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @ubifs_tnc_remove_ino(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i32 @ubifs_delete_orphan(%struct.ubifs_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
