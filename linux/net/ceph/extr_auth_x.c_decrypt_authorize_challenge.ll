; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_decrypt_authorize_challenge.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_decrypt_authorize_challenge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_x_authorizer = type { i32 }
%struct.ceph_x_authorize_challenge = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"bad size %d for ceph_x_authorize_challenge\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_x_authorizer*, i8*, i32, i32*)* @decrypt_authorize_challenge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decrypt_authorize_challenge(%struct.ceph_x_authorizer* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_x_authorizer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ceph_x_authorize_challenge*, align 8
  %11 = alloca i32, align 4
  store %struct.ceph_x_authorizer* %0, %struct.ceph_x_authorizer** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = getelementptr i8, i8* %12, i64 4
  %14 = bitcast i8* %13 to %struct.ceph_x_authorize_challenge*
  store %struct.ceph_x_authorize_challenge* %14, %struct.ceph_x_authorize_challenge** %10, align 8
  %15 = load %struct.ceph_x_authorizer*, %struct.ceph_x_authorizer** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_x_authorizer, %struct.ceph_x_authorizer* %15, i32 0, i32 0
  %17 = load i8*, i8** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @__ceph_x_decrypt(i32* %16, i8* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %39

24:                                               ; preds = %4
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp ult i64 %26, 4
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.ceph_x_authorize_challenge*, %struct.ceph_x_authorize_challenge** %10, align 8
  %35 = getelementptr inbounds %struct.ceph_x_authorize_challenge, %struct.ceph_x_authorize_challenge* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le64_to_cpu(i32 %36)
  %38 = load i32*, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  store i32 0, i32* %5, align 4
  br label %39

39:                                               ; preds = %33, %28, %22
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @__ceph_x_decrypt(i32*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
