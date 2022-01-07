; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_recvmsg_completion.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_recvmsg_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_zcopy_cookies = type { i32 }
%struct.cmsghdr = type { i64, i64 }
%struct.msghdr = type { i8*, i32, i32 }

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_CTRUNC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"recvmsg notification: truncated\00", align 1
@SOL_RDS = common dso_local global i64 0, align 8
@RDS_CMSG_ZCOPY_COMPLETION = common dso_local global i64 0, align 8
@completions = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"ignoring cmsg at level %d type %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_recvmsg_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_recvmsg_completion(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rds_zcopy_cookies*, align 8
  %7 = alloca %struct.cmsghdr*, align 8
  %8 = alloca %struct.msghdr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i32 @CMSG_SPACE(i32 4)
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i32 0, i32* %9, align 4
  %15 = call i32 @memset(%struct.msghdr* %8, i32 0, i32 16)
  %16 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = trunc i64 %12 to i32
  %18 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @MSG_DONTWAIT, align 4
  %21 = call i64 @recvmsg(i32 %19, %struct.msghdr* %8, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

25:                                               ; preds = %1
  %26 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %8, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MSG_CTRUNC, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @errno, align 4
  %33 = call i32 (i32, i32, i8*, ...) @error(i32 1, i32 %32, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %25
  %35 = call %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr* %8)
  store %struct.cmsghdr* %35, %struct.cmsghdr** %7, align 8
  br label %36

36:                                               ; preds = %69, %34
  %37 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %38 = icmp ne %struct.cmsghdr* %37, null
  br i1 %38, label %39, label %72

39:                                               ; preds = %36
  %40 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %41 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SOL_RDS, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %39
  %46 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %47 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RDS_CMSG_ZCOPY_COMPLETION, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %45
  %52 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %53 = call i64 @CMSG_DATA(%struct.cmsghdr* %52)
  %54 = inttoptr i64 %53 to %struct.rds_zcopy_cookies*
  store %struct.rds_zcopy_cookies* %54, %struct.rds_zcopy_cookies** %6, align 8
  %55 = load %struct.rds_zcopy_cookies*, %struct.rds_zcopy_cookies** %6, align 8
  %56 = call i64 @do_process_zerocopy_cookies(%struct.rds_zcopy_cookies* %55)
  %57 = load i32, i32* @completions, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* @completions, align 4
  store i32 1, i32* %9, align 4
  br label %72

61:                                               ; preds = %45, %39
  %62 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %63 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %66 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i32, i32, i8*, ...) @error(i32 0, i32 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %64, i64 %67)
  br label %69

69:                                               ; preds = %61
  %70 = load %struct.cmsghdr*, %struct.cmsghdr** %7, align 8
  %71 = call %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr* %8, %struct.cmsghdr* %70)
  store %struct.cmsghdr* %71, %struct.cmsghdr** %7, align 8
  br label %36

72:                                               ; preds = %51, %36
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %23
  %75 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %75)
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i32 @CMSG_SPACE(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i64 @recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @error(i32, i32, i8*, ...) #1

declare dso_local %struct.cmsghdr* @CMSG_FIRSTHDR(%struct.msghdr*) #1

declare dso_local i64 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local i64 @do_process_zerocopy_cookies(%struct.rds_zcopy_cookies*) #1

declare dso_local %struct.cmsghdr* @CMSG_NXTHDR(%struct.msghdr*, %struct.cmsghdr*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
