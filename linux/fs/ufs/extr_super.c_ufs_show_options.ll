; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_show_options.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_super.c_ufs_show_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_token = type { i32, i32 }
%struct.seq_file = type { i32 }
%struct.dentry = type { i32 }
%struct.ufs_sb_info = type { i32 }

@UFS_MOUNT_UFSTYPE = common dso_local global i32 0, align 4
@tokens = common dso_local global %struct.match_token* null, align 8
@Opt_onerror_panic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@UFS_MOUNT_ONERROR = common dso_local global i32 0, align 4
@Opt_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, %struct.dentry*)* @ufs_show_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ufs_show_options(%struct.seq_file* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.ufs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.match_token*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.ufs_sb_info* @UFS_SB(i32 %10)
  store %struct.ufs_sb_info* %11, %struct.ufs_sb_info** %5, align 8
  %12 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %13 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @UFS_MOUNT_UFSTYPE, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.match_token*, %struct.match_token** @tokens, align 8
  store %struct.match_token* %17, %struct.match_token** %7, align 8
  br label %18

18:                                               ; preds = %32, %2
  %19 = load %struct.match_token*, %struct.match_token** %7, align 8
  %20 = getelementptr inbounds %struct.match_token, %struct.match_token* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @Opt_onerror_panic, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = load %struct.match_token*, %struct.match_token** %7, align 8
  %26 = getelementptr inbounds %struct.match_token, %struct.match_token* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %27, %28
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi i1 [ false, %18 ], [ %29, %24 ]
  br i1 %31, label %32, label %35

32:                                               ; preds = %30
  %33 = load %struct.match_token*, %struct.match_token** %7, align 8
  %34 = getelementptr inbounds %struct.match_token, %struct.match_token* %33, i32 1
  store %struct.match_token* %34, %struct.match_token** %7, align 8
  br label %18

35:                                               ; preds = %30
  %36 = load %struct.match_token*, %struct.match_token** %7, align 8
  %37 = getelementptr inbounds %struct.match_token, %struct.match_token* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @Opt_onerror_panic, align 4
  %40 = icmp eq i32 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.match_token*, %struct.match_token** %7, align 8
  %45 = getelementptr inbounds %struct.match_token, %struct.match_token* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.ufs_sb_info*, %struct.ufs_sb_info** %5, align 8
  %49 = getelementptr inbounds %struct.ufs_sb_info, %struct.ufs_sb_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @UFS_MOUNT_ONERROR, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %67, %35
  %54 = load %struct.match_token*, %struct.match_token** %7, align 8
  %55 = getelementptr inbounds %struct.match_token, %struct.match_token* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @Opt_err, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %53
  %60 = load %struct.match_token*, %struct.match_token** %7, align 8
  %61 = getelementptr inbounds %struct.match_token, %struct.match_token* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %62, %63
  br label %65

65:                                               ; preds = %59, %53
  %66 = phi i1 [ false, %53 ], [ %64, %59 ]
  br i1 %66, label %67, label %70

67:                                               ; preds = %65
  %68 = load %struct.match_token*, %struct.match_token** %7, align 8
  %69 = getelementptr inbounds %struct.match_token, %struct.match_token* %68, i32 1
  store %struct.match_token* %69, %struct.match_token** %7, align 8
  br label %53

70:                                               ; preds = %65
  %71 = load %struct.match_token*, %struct.match_token** %7, align 8
  %72 = getelementptr inbounds %struct.match_token, %struct.match_token* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @Opt_err, align 4
  %75 = icmp eq i32 %73, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @BUG_ON(i32 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load %struct.match_token*, %struct.match_token** %7, align 8
  %80 = getelementptr inbounds %struct.match_token, %struct.match_token* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %81)
  ret i32 0
}

declare dso_local %struct.ufs_sb_info* @UFS_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
