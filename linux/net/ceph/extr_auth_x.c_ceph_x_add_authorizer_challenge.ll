; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_add_authorizer_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_add_authorizer_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32 }
%struct.ceph_authorizer = type { i32 }
%struct.ceph_x_authorizer = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"failed to decrypt authorize challenge: %d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"failed to encrypt authorizer w/ challenge: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_auth_client*, %struct.ceph_authorizer*, i8*, i32)* @ceph_x_add_authorizer_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_x_add_authorizer_challenge(%struct.ceph_auth_client* %0, %struct.ceph_authorizer* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_auth_client*, align 8
  %7 = alloca %struct.ceph_authorizer*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_x_authorizer*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %6, align 8
  store %struct.ceph_authorizer* %1, %struct.ceph_authorizer** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.ceph_authorizer*, %struct.ceph_authorizer** %7, align 8
  %14 = bitcast %struct.ceph_authorizer* %13 to i8*
  %15 = bitcast i8* %14 to %struct.ceph_x_authorizer*
  store %struct.ceph_x_authorizer* %15, %struct.ceph_x_authorizer** %10, align 8
  %16 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %10, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @decrypt_authorize_challenge(%struct.ceph_x_authorizer* %16, i8* %17, i32 %18, i32* %11)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %36

26:                                               ; preds = %4
  %27 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %10, align 8
  %28 = call i32 @encrypt_authorizer(%struct.ceph_x_authorizer* %27, i32* %11)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %12, align 4
  store i32 %34, i32* %5, align 4
  br label %36

35:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %31, %22
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @decrypt_authorize_challenge(%struct.ceph_x_authorizer*, i8*, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @encrypt_authorizer(%struct.ceph_x_authorizer*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
