; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_verify_authorizer_reply.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_verify_authorizer_reply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32 }
%struct.ceph_authorizer = type { i32 }
%struct.ceph_x_authorizer = type { i64, i32, i8* }
%struct.ceph_x_authorize_reply = type { i32 }

@CEPHX_AU_ENC_BUF_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"bad size %d for ceph_x_authorize_reply\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"verify_authorizer_reply nonce %llx got %llx ret %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*)* @ceph_x_verify_authorizer_reply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_verify_authorizer_reply(%struct.ceph_auth_client* %0, %struct.ceph_authorizer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_auth_client*, align 8
  %5 = alloca %struct.ceph_authorizer*, align 8
  %6 = alloca %struct.ceph_x_authorizer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ceph_x_authorize_reply*, align 8
  %9 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %4, align 8
  store %struct.ceph_authorizer* %1, %struct.ceph_authorizer** %5, align 8
  %10 = load %struct.ceph_authorizer*, %struct.ceph_authorizer** %5, align 8
  %11 = bitcast %struct.ceph_authorizer* %10 to i8*
  %12 = bitcast i8* %11 to %struct.ceph_x_authorizer*
  store %struct.ceph_x_authorizer* %12, %struct.ceph_x_authorizer** %6, align 8
  %13 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %13, i32 0, i32 2
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = call i32 (...) @ceph_x_encrypt_offset()
  %18 = sext i32 %17 to i64
  %19 = getelementptr i8, i8* %16, i64 %18
  %20 = bitcast i8* %19 to %struct.ceph_x_authorize_reply*
  store %struct.ceph_x_authorize_reply* %20, %struct.ceph_x_authorize_reply** %8, align 8
  %21 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %21, i32 0, i32 1
  %23 = load i8*, i8** %7, align 8
  %24 = load i32, i32* @CEPHX_AU_ENC_BUF_LEN, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr i8, i8* %23, i64 %25
  %27 = call i32 @ceph_x_decrypt(i32* %22, i8** %7, i8* %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %66

32:                                               ; preds = %2
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %66

41:                                               ; preds = %32
  %42 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %6, align 8
  %43 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  %46 = load %struct.ceph_x_authorize_reply*, %struct.ceph_x_authorize_reply** %8, align 8
  %47 = getelementptr inbounds %struct.ceph_x_authorize_reply, %struct.ceph_x_authorize_reply* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @le64_to_cpu(i32 %48)
  %50 = icmp ne i64 %45, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %41
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %9, align 4
  br label %55

54:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %6, align 8
  %57 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.ceph_x_authorize_reply*, %struct.ceph_x_authorize_reply** %8, align 8
  %60 = getelementptr inbounds %struct.ceph_x_authorize_reply, %struct.ceph_x_authorize_reply* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i64 @le64_to_cpu(i32 %61)
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @dout(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %58, i64 %62, i32 %63)
  %65 = load i32, i32* %9, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %55, %36, %30
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ceph_x_encrypt_offset(...) #1

declare dso_local i32 @ceph_x_decrypt(i32*, i8**, i8*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i32 @dout(i8*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
