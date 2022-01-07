; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_parse_security_flavors.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_super.c_nfs_parse_security_flavors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_parsed_mount_data = type { i32 }

@MAX_OPT_ARGS = common dso_local global i32 0, align 4
@MOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"NFS: parsing sec=%s option\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c":\00", align 1
@nfs_secflavor_tokens = common dso_local global i32 0, align 4
@RPC_AUTH_NULL = common dso_local global i32 0, align 4
@RPC_AUTH_UNIX = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5 = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5I = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_KRB5P = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEY = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEYI = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_LKEYP = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKM = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKMI = common dso_local global i32 0, align 4
@RPC_AUTH_GSS_SPKMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NFS: sec= option '%s' not recognized\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.nfs_parsed_mount_data*)* @nfs_parse_security_flavors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_parse_security_flavors(i8* %0, %struct.nfs_parsed_mount_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nfs_parsed_mount_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.nfs_parsed_mount_data* %1, %struct.nfs_parsed_mount_data** %5, align 8
  %11 = load i32, i32* @MAX_OPT_ARGS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load i32, i32* @MOUNT, align 4
  %16 = load i8*, i8** %4, align 8
  %17 = call i32 @dfprintk(i32 %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %16)
  br label %18

18:                                               ; preds = %58, %2
  %19 = call i8* @strsep(i8** %4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %19, i8** %9, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %59

21:                                               ; preds = %18
  %22 = load i8*, i8** %9, align 8
  %23 = load i32, i32* @nfs_secflavor_tokens, align 4
  %24 = call i32 @match_token(i8* %22, i32 %23, i32* %14)
  switch i32 %24, label %47 [
    i32 132, label %25
    i32 128, label %27
    i32 138, label %29
    i32 137, label %31
    i32 136, label %33
    i32 135, label %35
    i32 134, label %37
    i32 133, label %39
    i32 131, label %41
    i32 130, label %43
    i32 129, label %45
  ]

25:                                               ; preds = %21
  %26 = load i32, i32* @RPC_AUTH_NULL, align 4
  store i32 %26, i32* %8, align 4
  br label %51

27:                                               ; preds = %21
  %28 = load i32, i32* @RPC_AUTH_UNIX, align 4
  store i32 %28, i32* %8, align 4
  br label %51

29:                                               ; preds = %21
  %30 = load i32, i32* @RPC_AUTH_GSS_KRB5, align 4
  store i32 %30, i32* %8, align 4
  br label %51

31:                                               ; preds = %21
  %32 = load i32, i32* @RPC_AUTH_GSS_KRB5I, align 4
  store i32 %32, i32* %8, align 4
  br label %51

33:                                               ; preds = %21
  %34 = load i32, i32* @RPC_AUTH_GSS_KRB5P, align 4
  store i32 %34, i32* %8, align 4
  br label %51

35:                                               ; preds = %21
  %36 = load i32, i32* @RPC_AUTH_GSS_LKEY, align 4
  store i32 %36, i32* %8, align 4
  br label %51

37:                                               ; preds = %21
  %38 = load i32, i32* @RPC_AUTH_GSS_LKEYI, align 4
  store i32 %38, i32* %8, align 4
  br label %51

39:                                               ; preds = %21
  %40 = load i32, i32* @RPC_AUTH_GSS_LKEYP, align 4
  store i32 %40, i32* %8, align 4
  br label %51

41:                                               ; preds = %21
  %42 = load i32, i32* @RPC_AUTH_GSS_SPKM, align 4
  store i32 %42, i32* %8, align 4
  br label %51

43:                                               ; preds = %21
  %44 = load i32, i32* @RPC_AUTH_GSS_SPKMI, align 4
  store i32 %44, i32* %8, align 4
  br label %51

45:                                               ; preds = %21
  %46 = load i32, i32* @RPC_AUTH_GSS_SPKMP, align 4
  store i32 %46, i32* %8, align 4
  br label %51

47:                                               ; preds = %21
  %48 = load i32, i32* @MOUNT, align 4
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 @dfprintk(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %49)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

51:                                               ; preds = %45, %43, %41, %39, %37, %35, %33, %31, %29, %27, %25
  %52 = load %struct.nfs_parsed_mount_data*, %struct.nfs_parsed_mount_data** %5, align 8
  %53 = getelementptr inbounds %struct.nfs_parsed_mount_data, %struct.nfs_parsed_mount_data* %52, i32 0, i32 0
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @nfs_auth_info_add(i32* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

58:                                               ; preds = %51
  br label %18

59:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %59, %57, %47
  %61 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dfprintk(i32, i8*, i8*) #2

declare dso_local i8* @strsep(i8**, i8*) #2

declare dso_local i32 @match_token(i8*, i32, i32*) #2

declare dso_local i32 @nfs_auth_info_add(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
