; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_grant_reply.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_svclock.c_nlmsvc_grant_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_cookie = type { i64 }
%struct.nlm_block = type { i32 }

@.str = private unnamed_addr constant [43 x i8] c"grant_reply: looking for cookie %x, s=%d \0A\00", align 1
@nlm_lck_denied_grace_period = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nlmsvc_grant_reply(%struct.nlm_cookie* %0, i64 %1) #0 {
  %3 = alloca %struct.nlm_cookie*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.nlm_block*, align 8
  store %struct.nlm_cookie* %0, %struct.nlm_cookie** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.nlm_cookie*, %struct.nlm_cookie** %3, align 8
  %7 = getelementptr inbounds %struct.nlm_cookie, %struct.nlm_cookie* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i32*
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* %4, align 8
  %12 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  %13 = load %struct.nlm_cookie*, %struct.nlm_cookie** %3, align 8
  %14 = call %struct.nlm_block* @nlmsvc_find_block(%struct.nlm_cookie* %13)
  store %struct.nlm_block* %14, %struct.nlm_block** %5, align 8
  %15 = icmp ne %struct.nlm_block* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %32

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @nlm_lck_denied_grace_period, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.nlm_block*, %struct.nlm_block** %5, align 8
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 10, %23
  %25 = call i32 @nlmsvc_insert_block(%struct.nlm_block* %22, i32 %24)
  br label %29

26:                                               ; preds = %17
  %27 = load %struct.nlm_block*, %struct.nlm_block** %5, align 8
  %28 = call i32 @nlmsvc_unlink_block(%struct.nlm_block* %27)
  br label %29

29:                                               ; preds = %26, %21
  %30 = load %struct.nlm_block*, %struct.nlm_block** %5, align 8
  %31 = call i32 @nlmsvc_release_block(%struct.nlm_block* %30)
  br label %32

32:                                               ; preds = %29, %16
  ret void
}

declare dso_local i32 @dprintk(i8*, i32, i64) #1

declare dso_local %struct.nlm_block* @nlmsvc_find_block(%struct.nlm_cookie*) #1

declare dso_local i32 @nlmsvc_insert_block(%struct.nlm_block*, i32) #1

declare dso_local i32 @nlmsvc_unlink_block(%struct.nlm_block*) #1

declare dso_local i32 @nlmsvc_release_block(%struct.nlm_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
