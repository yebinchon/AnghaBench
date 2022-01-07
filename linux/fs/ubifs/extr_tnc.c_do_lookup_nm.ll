; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_do_lookup_nm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_tnc.c_do_lookup_nm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_info = type { i32 }
%union.ubifs_key = type { i32 }
%struct.fscrypt_name = type { i32 }
%struct.ubifs_znode = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"key \00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"rc returned %d, znode %p, n %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubifs_info*, %union.ubifs_key*, i8*, %struct.fscrypt_name*)* @do_lookup_nm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_lookup_nm(%struct.ubifs_info* %0, %union.ubifs_key* %1, i8* %2, %struct.fscrypt_name* %3) #0 {
  %5 = alloca %struct.ubifs_info*, align 8
  %6 = alloca %union.ubifs_key*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fscrypt_name*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubifs_znode*, align 8
  store %struct.ubifs_info* %0, %struct.ubifs_info** %5, align 8
  store %union.ubifs_key* %1, %union.ubifs_key** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.fscrypt_name* %3, %struct.fscrypt_name** %8, align 8
  %13 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %14 = call i32 @dbg_tnck(%union.ubifs_key* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %16 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %19 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %20 = call i32 @ubifs_lookup_level0(%struct.ubifs_info* %18, %union.ubifs_key* %19, %struct.ubifs_znode** %12, i32* %10)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOENT, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %11, align 4
  br label %68

26:                                               ; preds = %4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %11, align 4
  br label %68

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %34 = load i32, i32* %10, align 4
  %35 = icmp sge i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ubifs_assert(%struct.ubifs_info* %33, i32 %36)
  %38 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %39 = load %union.ubifs_key*, %union.ubifs_key** %6, align 8
  %40 = load %struct.fscrypt_name*, %struct.fscrypt_name** %8, align 8
  %41 = call i32 @resolve_collision(%struct.ubifs_info* %38, %union.ubifs_key* %39, %struct.ubifs_znode** %12, i32* %10, %struct.fscrypt_name* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @dbg_tnc(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %42, %struct.ubifs_znode* %43, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %68

52:                                               ; preds = %32
  %53 = load i32, i32* %11, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = load i32, i32* @ENOENT, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %68

58:                                               ; preds = %52
  %59 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %60 = load %struct.ubifs_znode*, %struct.ubifs_znode** %12, align 8
  %61 = getelementptr inbounds %struct.ubifs_znode, %struct.ubifs_znode* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @tnc_read_hashed_node(%struct.ubifs_info* %59, i32* %65, i8* %66)
  store i32 %67, i32* %11, align 4
  br label %68

68:                                               ; preds = %58, %55, %51, %29, %23
  %69 = load %struct.ubifs_info*, %struct.ubifs_info** %5, align 8
  %70 = getelementptr inbounds %struct.ubifs_info, %struct.ubifs_info* %69, i32 0, i32 0
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @dbg_tnck(%union.ubifs_key*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_lookup_level0(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32 @resolve_collision(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_znode**, i32*, %struct.fscrypt_name*) #1

declare dso_local i32 @dbg_tnc(i8*, i32, %struct.ubifs_znode*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @tnc_read_hashed_node(%struct.ubifs_info*, i32*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
