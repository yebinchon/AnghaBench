; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth_x.c_ceph_x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32*, %struct.ceph_x_info*, i32, i32 }
%struct.ceph_x_info = type { i32, i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"ceph_x_init %p\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"no secret set (for auth_x protocol)\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"cannot clone key: %d\0A\00", align 1
@RB_ROOT = common dso_local global i32 0, align 4
@CEPH_AUTH_CEPHX = common dso_local global i32 0, align 4
@ceph_x_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_x_init(%struct.ceph_auth_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca %struct.ceph_x_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_auth_client* %0, %struct.ceph_auth_client** %3, align 8
  %6 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %7 = call i32 @dout(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), %struct.ceph_auth_client* %6)
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @GFP_NOFS, align 4
  %11 = call %struct.ceph_x_info* @kzalloc(i32 12, i32 %10)
  store %struct.ceph_x_info* %11, %struct.ceph_x_info** %4, align 8
  %12 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %13 = icmp ne %struct.ceph_x_info* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %53

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %15
  %23 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %50

24:                                               ; preds = %15
  %25 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %26 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %25, i32 0, i32 2
  %27 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ceph_crypto_key_clone(i32* %26, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  br label %50

36:                                               ; preds = %24
  %37 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %37, i32 0, i32 0
  store i32 1, i32* %38, align 4
  %39 = load i32, i32* @RB_ROOT, align 4
  %40 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_x_info, %struct.ceph_x_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @CEPH_AUTH_CEPHX, align 4
  %43 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %43, i32 0, i32 2
  store i32 %42, i32* %44, align 8
  %45 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %46 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %46, i32 0, i32 1
  store %struct.ceph_x_info* %45, %struct.ceph_x_info** %47, align 8
  %48 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  %49 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %48, i32 0, i32 0
  store i32* @ceph_x_ops, i32** %49, align 8
  store i32 0, i32* %2, align 4
  br label %55

50:                                               ; preds = %33, %22
  %51 = load %struct.ceph_x_info*, %struct.ceph_x_info** %4, align 8
  %52 = call i32 @kfree(%struct.ceph_x_info* %51)
  br label %53

53:                                               ; preds = %50, %14
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %36
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @dout(i8*, %struct.ceph_auth_client*) #1

declare dso_local %struct.ceph_x_info* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @ceph_crypto_key_clone(i32*, i32) #1

declare dso_local i32 @kfree(%struct.ceph_x_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
