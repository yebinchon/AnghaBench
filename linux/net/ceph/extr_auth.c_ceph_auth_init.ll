; ModuleID = '/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ceph/extr_auth.c_ceph_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_auth_client = type { i32, i8*, %struct.ceph_crypto_key*, i32 }
%struct.ceph_crypto_key = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"auth_init name '%s'\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@CEPH_AUTH_NAME_DEFAULT = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"auth_init name %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ceph_auth_client* @ceph_auth_init(i8* %0, %struct.ceph_crypto_key* %1) #0 {
  %3 = alloca %struct.ceph_auth_client*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ceph_crypto_key*, align 8
  %6 = alloca %struct.ceph_auth_client*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ceph_crypto_key* %1, %struct.ceph_crypto_key** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = call i32 @dout(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %8)
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.ceph_auth_client* @kzalloc(i32 32, i32 %12)
  store %struct.ceph_auth_client* %13, %struct.ceph_auth_client** %6, align 8
  %14 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %15 = icmp ne %struct.ceph_auth_client* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %42

17:                                               ; preds = %2
  %18 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %19 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %18, i32 0, i32 3
  %20 = call i32 @mutex_init(i32* %19)
  %21 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i8*, i8** %4, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i8*, i8** %4, align 8
  %27 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  br label %33

29:                                               ; preds = %17
  %30 = load i8*, i8** @CEPH_AUTH_NAME_DEFAULT, align 8
  %31 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %31, i32 0, i32 1
  store i8* %30, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %25
  %34 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %35 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %36)
  %38 = load %struct.ceph_crypto_key*, %struct.ceph_crypto_key** %5, align 8
  %39 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  %40 = getelementptr inbounds %struct.ceph_auth_client, %struct.ceph_auth_client* %39, i32 0, i32 2
  store %struct.ceph_crypto_key* %38, %struct.ceph_crypto_key** %40, align 8
  %41 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %6, align 8
  store %struct.ceph_auth_client* %41, %struct.ceph_auth_client** %3, align 8
  br label %45

42:                                               ; preds = %16
  %43 = load i32, i32* %7, align 4
  %44 = call %struct.ceph_auth_client* @ERR_PTR(i32 %43)
  store %struct.ceph_auth_client* %44, %struct.ceph_auth_client** %3, align 8
  br label %45

45:                                               ; preds = %42, %33
  %46 = load %struct.ceph_auth_client*, %struct.ceph_auth_client** %3, align 8
  ret %struct.ceph_auth_client* %46
}

declare dso_local i32 @dout(i8*, i8*) #1

declare dso_local %struct.ceph_auth_client* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local %struct.ceph_auth_client* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
