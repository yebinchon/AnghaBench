; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntproc.c_nlmclnt_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_rqst = type { i32, %struct.nlm_res, %struct.nlm_host* }
%struct.nlm_res = type { i64 }
%struct.nlm_host = type { i32 }
%struct.file_lock = type { i8, i32 }

@FL_EXISTS = common dso_local global i8 0, align 1
@ENOENT = common dso_local global i32 0, align 4
@NLMPROC_UNLOCK = common dso_local global i32 0, align 4
@nlmclnt_unlock_ops = common dso_local global i32 0, align 4
@nlm_granted = common dso_local global i64 0, align 8
@nlm_lck_denied_nolocks = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"lockd: unexpected unlock status: %d\0A\00", align 1
@ENOLCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlm_rqst*, %struct.file_lock*)* @nlmclnt_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nlmclnt_unlock(%struct.nlm_rqst* %0, %struct.file_lock* %1) #0 {
  %3 = alloca %struct.nlm_rqst*, align 8
  %4 = alloca %struct.file_lock*, align 8
  %5 = alloca %struct.nlm_host*, align 8
  %6 = alloca %struct.nlm_res*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  store %struct.nlm_rqst* %0, %struct.nlm_rqst** %3, align 8
  store %struct.file_lock* %1, %struct.file_lock** %4, align 8
  %9 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %10 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %9, i32 0, i32 2
  %11 = load %struct.nlm_host*, %struct.nlm_host** %10, align 8
  store %struct.nlm_host* %11, %struct.nlm_host** %5, align 8
  %12 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %13 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %12, i32 0, i32 1
  store %struct.nlm_res* %13, %struct.nlm_res** %6, align 8
  %14 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %15 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 4
  store i8 %16, i8* %8, align 1
  %17 = load i8, i8* @FL_EXISTS, align 1
  %18 = zext i8 %17 to i32
  %19 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %20 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = zext i8 %21 to i32
  %23 = or i32 %22, %18
  %24 = trunc i32 %23 to i8
  store i8 %24, i8* %20, align 4
  %25 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %26 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %25, i32 0, i32 0
  %27 = call i32 @down_read(i32* %26)
  %28 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %29 = call i32 @do_vfs_lock(%struct.file_lock* %28)
  store i32 %29, i32* %7, align 4
  %30 = load %struct.nlm_host*, %struct.nlm_host** %5, align 8
  %31 = getelementptr inbounds %struct.nlm_host, %struct.nlm_host* %30, i32 0, i32 0
  %32 = call i32 @up_read(i32* %31)
  %33 = load i8, i8* %8, align 1
  %34 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %35 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %34, i32 0, i32 0
  store i8 %33, i8* %35, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @ENOENT, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %77

41:                                               ; preds = %2
  %42 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %43 = getelementptr inbounds %struct.nlm_rqst, %struct.nlm_rqst* %42, i32 0, i32 0
  %44 = call i32 @refcount_inc(i32* %43)
  %45 = load %struct.file_lock*, %struct.file_lock** %4, align 8
  %46 = getelementptr inbounds %struct.file_lock, %struct.file_lock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nfs_file_cred(i32 %47)
  %49 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %50 = load i32, i32* @NLMPROC_UNLOCK, align 4
  %51 = call i32 @nlmclnt_async_call(i32 %48, %struct.nlm_rqst* %49, i32 %50, i32* @nlmclnt_unlock_ops)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %41
  br label %77

55:                                               ; preds = %41
  %56 = load %struct.nlm_res*, %struct.nlm_res** %6, align 8
  %57 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @nlm_granted, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %77

62:                                               ; preds = %55
  %63 = load %struct.nlm_res*, %struct.nlm_res** %6, align 8
  %64 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @nlm_lck_denied_nolocks, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %62
  %69 = load %struct.nlm_res*, %struct.nlm_res** %6, align 8
  %70 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ntohl(i64 %71)
  %73 = call i32 @printk(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %68, %62
  %75 = load i32, i32* @ENOLCK, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %74, %61, %54, %40
  %78 = load %struct.nlm_rqst*, %struct.nlm_rqst** %3, align 8
  %79 = call i32 @nlmclnt_release_call(%struct.nlm_rqst* %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @do_vfs_lock(%struct.file_lock*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @nlmclnt_async_call(i32, %struct.nlm_rqst*, i32, i32*) #1

declare dso_local i32 @nfs_file_cred(i32) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i32 @nlmclnt_release_call(%struct.nlm_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
