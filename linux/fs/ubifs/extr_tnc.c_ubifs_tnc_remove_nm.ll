; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_nm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_ubifs_tnc_remove_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32, i64 }
%union.ubifs_key = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_znode = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"key \00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubifs_tnc_remove_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, %struct.fscrypt_name* %2) #0 {
  %4 = alloca %struct.ubifs_info*, align 8
  %5 = alloca %union.ubifs_key*, align 8
  %6 = alloca %struct.fscrypt_name*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %4, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %5, align 8
  store %struct.fscrypt_name* %2, %struct.fscrypt_name** %6, align 8
  %10 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %11 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %14 = call i32 @dbg_tnck(%union.ubifs_key* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %16 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %17 = call i32 @lookup_level0_dirty(%struct.ubifs_info* %15, %union.ubifs_key* %16, %struct.ubifs_znode** %9, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %77

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %76

24:                                               ; preds = %21
  %25 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %26 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %31 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %32 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %33 = call i32 @fallible_resolve_collision(%struct.ubifs_info* %30, %union.ubifs_key* %31, %struct.ubifs_znode** %9, i32* %7, %struct.fscrypt_name* %32, i32 0)
  store i32 %33, i32* %8, align 4
  br label %39

34:                                               ; preds = %24
  %35 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %36 = load %union.ubifs_key*, %union.ubifs_key** %5, align 8
  %37 = load %struct.fscrypt_name*, %struct.fscrypt_name** %6, align 8
  %38 = call i32 @resolve_collision(%struct.ubifs_info* %35, %union.ubifs_key* %36, %struct.ubifs_znode** %9, i32* %7, %struct.fscrypt_name* %37)
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %40, %struct.ubifs_znode* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %77

47:                                               ; preds = %39
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  %51 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %52 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %57 = call i32 @ubifs_zn_dirty(%struct.ubifs_znode* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %55, %50
  %60 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %61 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %62 = call %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info* %60, %struct.ubifs_znode* %61)
  store %struct.ubifs_znode* %62, %struct.ubifs_znode** %9, align 8
  %63 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %64 = call i64 @IS_ERR(%struct.ubifs_znode* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %68 = call i32 @PTR_ERR(%struct.ubifs_znode* %67)
  store i32 %68, i32* %8, align 4
  br label %77

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %55
  %71 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %72 = load %struct.ubifs_znode*, %struct.ubifs_znode** %9, align 8
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @tnc_delete(%struct.ubifs_info* %71, %struct.ubifs_znode* %72, i32 %73)
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %70, %47
  br label %76

76:                                               ; preds = %75, %21
  br label %77

77:                                               ; preds = %76, %66, %46, %20
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %77
  %81 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %82 = call i32 @dbg_check_tnc(%struct.ubifs_info* %81, i32 0)
  store i32 %82, i32* %8, align 4
  br label %83

83:                                               ; preds = %80, %77
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %4, align 8
  %85 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %84, i32 0, i32 0
  %86 = call i32 @mutex_unlock(i32* %85)
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i32 @lookup_level0_dirty(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @fallible_resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*, i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @ubifs_zn_dirty(%struct.ubifs_znode*) #1

declare dso_local %struct.ubifs_znode* @dirty_cow_bottom_up(%struct.ubifs_info*, %struct.ubifs_znode*) #1

declare dso_local i64 @IS_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @PTR_ERR(%struct.ubifs_znode*) #1

declare dso_local i32 @tnc_delete(%struct.ubifs_info*, %struct.ubifs_znode*, i32) #1

declare dso_local i32 @dbg_check_tnc(%struct.ubifs_info*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
