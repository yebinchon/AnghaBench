; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_super.c_ubifs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.ubifs_inode = type { i64, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"inode %lu, mode %#x\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"can't delete inode %lu, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ubifs_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ubifs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %struct.ubifs_inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load %struct.inode*, %struct.inode** %2, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 6
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %9, align 8
  store %struct.ubifs_info* %10, %struct.ubifs_info** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %2, align 8
  %12 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %11)
  store %struct.ubifs_inode* %12, %struct.ubifs_inode** %5, align 8
  %13 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %14 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %66

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 5
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = call i32 @dbg_gen(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25)
  %27 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 4
  %30 = call i32 @atomic_read(i32* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @ubifs_assert(%struct.ubifs_info* %27, i32 %33)
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 3
  %37 = call i32 @truncate_inode_pages_final(i32* %36)
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %18
  br label %84

43:                                               ; preds = %18
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i64 @is_bad_inode(%struct.inode* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %66

48:                                               ; preds = %43
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %52 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = call i32 @ubifs_jnl_delete_inode(%struct.ubifs_info* %53, %struct.inode* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %48
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @ubifs_err(%struct.ubifs_info* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %63)
  br label %65

65:                                               ; preds = %58, %48
  br label %66

66:                                               ; preds = %65, %47, %17
  %67 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %68 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %73 = load %struct.ubifs_inode*, %struct.ubifs_inode** %5, align 8
  %74 = call i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info* %72, %struct.ubifs_inode* %73)
  br label %83

75:                                               ; preds = %66
  %76 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %77 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  %79 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %80 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  store i64 0, i64* %81, align 8
  %82 = call i32 (...) @smp_wmb()
  br label %83

83:                                               ; preds = %75, %71
  br label %84

84:                                               ; preds = %83, %42
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = call i32 @clear_inode(%struct.inode* %85)
  %87 = load %struct.inode*, %struct.inode** %2, align 8
  %88 = call i32 @fscrypt_put_encryption_info(%struct.inode* %87)
  ret void
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @dbg_gen(i8*, i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i64 @is_bad_inode(%struct.inode*) #1

declare dso_local i32 @ubifs_jnl_delete_inode(%struct.ubifs_info*, %struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @ubifs_release_dirty_inode_budget(%struct.ubifs_info*, %struct.ubifs_inode*) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @fscrypt_put_encryption_info(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
