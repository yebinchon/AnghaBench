; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_reject_key.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_reject_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.key* }
%struct.key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.request_key_auth** }
%struct.request_key_auth = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [12 x i8] c"%d,%u,%u,%d\00", align 1
@MAX_ERRNO = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@ERESTARTNOINTR = common dso_local global i32 0, align 4
@ERESTARTNOHAND = common dso_local global i32 0, align 4
@ERESTART_RESTARTBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_reject_key(i64 %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.cred*, align 8
  %11 = alloca %struct.request_key_auth*, align 8
  %12 = alloca %struct.key*, align 8
  %13 = alloca %struct.key*, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %15 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %15, %struct.cred** %10, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @kenter(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i64 %16, i32 %17, i32 %18, i64 %19)
  %21 = load i32, i32* %8, align 4
  %22 = icmp ule i32 %21, 0
  br i1 %22, label %43, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MAX_ERRNO, align 4
  %26 = icmp uge i32 %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ERESTARTSYS, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %43, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @ERESTARTNOINTR, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @ERESTARTNOHAND, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @ERESTART_RESTARTBLOCK, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35, %31, %27, %23, %4
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub nsw i64 0, %44
  store i64 %45, i64* %5, align 8
  br label %95

46:                                               ; preds = %39
  %47 = load i64, i64* @EPERM, align 8
  %48 = sub nsw i64 0, %47
  store i64 %48, i64* %14, align 8
  %49 = load %struct.cred*, %struct.cred** %10, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 0
  %51 = load %struct.key*, %struct.key** %50, align 8
  store %struct.key* %51, %struct.key** %12, align 8
  %52 = load %struct.key*, %struct.key** %12, align 8
  %53 = icmp ne %struct.key* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %93

55:                                               ; preds = %46
  %56 = load %struct.key*, %struct.key** %12, align 8
  %57 = getelementptr inbounds %struct.key, %struct.key* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load %struct.request_key_auth**, %struct.request_key_auth*** %58, align 8
  %60 = getelementptr inbounds %struct.request_key_auth*, %struct.request_key_auth** %59, i64 0
  %61 = load %struct.request_key_auth*, %struct.request_key_auth** %60, align 8
  store %struct.request_key_auth* %61, %struct.request_key_auth** %11, align 8
  %62 = load %struct.request_key_auth*, %struct.request_key_auth** %11, align 8
  %63 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %6, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %93

70:                                               ; preds = %55
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.request_key_auth*, %struct.request_key_auth** %11, align 8
  %73 = call i64 @get_instantiation_keyring(i64 %71, %struct.request_key_auth* %72, %struct.key** %13)
  store i64 %73, i64* %14, align 8
  %74 = load i64, i64* %14, align 8
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %93

77:                                               ; preds = %70
  %78 = load %struct.request_key_auth*, %struct.request_key_auth** %11, align 8
  %79 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.key*, %struct.key** %13, align 8
  %84 = load %struct.key*, %struct.key** %12, align 8
  %85 = call i64 @key_reject_and_link(%struct.TYPE_4__* %80, i32 %81, i32 %82, %struct.key* %83, %struct.key* %84)
  store i64 %85, i64* %14, align 8
  %86 = load %struct.key*, %struct.key** %13, align 8
  %87 = call i32 @key_put(%struct.key* %86)
  %88 = load i64, i64* %14, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %77
  %91 = call i32 @keyctl_change_reqkey_auth(i32* null)
  br label %92

92:                                               ; preds = %90, %77
  br label %93

93:                                               ; preds = %92, %76, %69, %54
  %94 = load i64, i64* %14, align 8
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %43
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i32 @kenter(i8*, i64, i32, i32, i64) #1

declare dso_local i64 @get_instantiation_keyring(i64, %struct.request_key_auth*, %struct.key**) #1

declare dso_local i64 @key_reject_and_link(%struct.TYPE_4__*, i32, i32, %struct.key*, %struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @keyctl_change_reqkey_auth(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
