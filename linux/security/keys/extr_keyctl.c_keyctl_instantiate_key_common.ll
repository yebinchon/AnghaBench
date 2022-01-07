; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_instantiate_key_common.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_keyctl.c_keyctl_instantiate_key_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iov_iter = type { i32 }
%struct.cred = type { %struct.key* }
%struct.key = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.request_key_auth** }
%struct.request_key_auth = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"%d,,%zu,%d\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EPERM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @keyctl_instantiate_key_common(i64 %0, %struct.iov_iter* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.iov_iter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.cred*, align 8
  %8 = alloca %struct.request_key_auth*, align 8
  %9 = alloca %struct.key*, align 8
  %10 = alloca %struct.key*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %14, %struct.cred** %7, align 8
  %15 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %16 = icmp ne %struct.iov_iter* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %19 = call i64 @iov_iter_count(%struct.iov_iter* %18)
  br label %21

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20, %17
  %22 = phi i64 [ %19, %17 ], [ 0, %20 ]
  store i64 %22, i64* %11, align 8
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i32 @kenter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24, i64 %25)
  %27 = load i64, i64* %11, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store %struct.iov_iter* null, %struct.iov_iter** %5, align 8
  br label %30

30:                                               ; preds = %29, %21
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %11, align 8
  %34 = icmp ugt i64 %33, 1048575
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %115

36:                                               ; preds = %30
  %37 = load i64, i64* @EPERM, align 8
  %38 = sub nsw i64 0, %37
  store i64 %38, i64* %13, align 8
  %39 = load %struct.cred*, %struct.cred** %7, align 8
  %40 = getelementptr inbounds %struct.cred, %struct.cred* %39, i32 0, i32 0
  %41 = load %struct.key*, %struct.key** %40, align 8
  store %struct.key* %41, %struct.key** %9, align 8
  %42 = load %struct.key*, %struct.key** %9, align 8
  %43 = icmp ne %struct.key* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  br label %115

45:                                               ; preds = %36
  %46 = load %struct.key*, %struct.key** %9, align 8
  %47 = getelementptr inbounds %struct.key, %struct.key* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load %struct.request_key_auth**, %struct.request_key_auth*** %48, align 8
  %50 = getelementptr inbounds %struct.request_key_auth*, %struct.request_key_auth** %49, i64 0
  %51 = load %struct.request_key_auth*, %struct.request_key_auth** %50, align 8
  store %struct.request_key_auth* %51, %struct.request_key_auth** %8, align 8
  %52 = load %struct.request_key_auth*, %struct.request_key_auth** %8, align 8
  %53 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %45
  br label %115

60:                                               ; preds = %45
  store i8* null, i8** %12, align 8
  %61 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %62 = icmp ne %struct.iov_iter* %61, null
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i64, i64* @ENOMEM, align 8
  %65 = sub nsw i64 0, %64
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %11, align 8
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call i8* @kvmalloc(i64 %66, i32 %67)
  store i8* %68, i8** %12, align 8
  %69 = load i8*, i8** %12, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %115

72:                                               ; preds = %63
  %73 = load i64, i64* @EFAULT, align 8
  %74 = sub nsw i64 0, %73
  store i64 %74, i64* %13, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %11, align 8
  %77 = load %struct.iov_iter*, %struct.iov_iter** %5, align 8
  %78 = call i32 @copy_from_iter_full(i8* %75, i64 %76, %struct.iov_iter* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %72
  br label %105

81:                                               ; preds = %72
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i64, i64* %6, align 8
  %84 = load %struct.request_key_auth*, %struct.request_key_auth** %8, align 8
  %85 = call i64 @get_instantiation_keyring(i64 %83, %struct.request_key_auth* %84, %struct.key** %10)
  store i64 %85, i64* %13, align 8
  %86 = load i64, i64* %13, align 8
  %87 = icmp slt i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %105

89:                                               ; preds = %82
  %90 = load %struct.request_key_auth*, %struct.request_key_auth** %8, align 8
  %91 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %90, i32 0, i32 0
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i8*, i8** %12, align 8
  %94 = load i64, i64* %11, align 8
  %95 = load %struct.key*, %struct.key** %10, align 8
  %96 = load %struct.key*, %struct.key** %9, align 8
  %97 = call i64 @key_instantiate_and_link(%struct.TYPE_4__* %92, i8* %93, i64 %94, %struct.key* %95, %struct.key* %96)
  store i64 %97, i64* %13, align 8
  %98 = load %struct.key*, %struct.key** %10, align 8
  %99 = call i32 @key_put(%struct.key* %98)
  %100 = load i64, i64* %13, align 8
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %89
  %103 = call i32 @keyctl_change_reqkey_auth(i32* null)
  br label %104

104:                                              ; preds = %102, %89
  br label %105

105:                                              ; preds = %104, %88, %80
  %106 = load i8*, i8** %12, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load i8*, i8** %12, align 8
  %110 = load i64, i64* %11, align 8
  %111 = call i32 @memzero_explicit(i8* %109, i64 %110)
  %112 = load i8*, i8** %12, align 8
  %113 = call i32 @kvfree(i8* %112)
  br label %114

114:                                              ; preds = %108, %105
  br label %115

115:                                              ; preds = %114, %71, %59, %44, %35
  %116 = load i64, i64* %13, align 8
  ret i64 %116
}

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @iov_iter_count(%struct.iov_iter*) #1

declare dso_local i32 @kenter(i8*, i64, i64, i64) #1

declare dso_local i8* @kvmalloc(i64, i32) #1

declare dso_local i32 @copy_from_iter_full(i8*, i64, %struct.iov_iter*) #1

declare dso_local i64 @get_instantiation_keyring(i64, %struct.request_key_auth*, %struct.key**) #1

declare dso_local i64 @key_instantiate_and_link(%struct.TYPE_4__*, i8*, i64, %struct.key*, %struct.key*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @keyctl_change_reqkey_auth(i32*) #1

declare dso_local i32 @memzero_explicit(i8*, i64) #1

declare dso_local i32 @kvfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
