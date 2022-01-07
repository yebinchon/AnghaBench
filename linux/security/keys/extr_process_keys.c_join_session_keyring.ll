; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_join_session_keyring.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_join_session_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { %struct.key*, i32, i32 }
%struct.key = type { i64 }

@ENOMEM = common dso_local global i64 0, align 8
@key_session_mutex = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i64 0, align 8
@KEY_POS_ALL = common dso_local global i32 0, align 4
@KEY_USR_VIEW = common dso_local global i32 0, align 4
@KEY_USR_READ = common dso_local global i32 0, align 4
@KEY_USR_LINK = common dso_local global i32 0, align 4
@KEY_ALLOC_IN_QUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @join_session_keyring(i8* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.cred*, align 8
  %5 = alloca %struct.cred*, align 8
  %6 = alloca %struct.key*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %9 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %9, %struct.cred** %5, align 8
  %10 = load %struct.cred*, %struct.cred** %5, align 8
  %11 = icmp ne %struct.cred* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i64, i64* @ENOMEM, align 8
  %14 = sub nsw i64 0, %13
  store i64 %14, i64* %2, align 8
  br label %115

15:                                               ; preds = %1
  %16 = call %struct.cred* (...) @current_cred()
  store %struct.cred* %16, %struct.cred** %4, align 8
  %17 = load i8*, i8** %3, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %15
  %20 = load %struct.cred*, %struct.cred** %5, align 8
  %21 = call i64 @install_session_keyring_to_cred(%struct.cred* %20, %struct.key* null)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %111

25:                                               ; preds = %19
  %26 = load %struct.cred*, %struct.cred** %5, align 8
  %27 = getelementptr inbounds %struct.cred, %struct.cred* %26, i32 0, i32 0
  %28 = load %struct.key*, %struct.key** %27, align 8
  %29 = getelementptr inbounds %struct.key, %struct.key* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %8, align 8
  %31 = load %struct.cred*, %struct.cred** %5, align 8
  %32 = call i64 @commit_creds(%struct.cred* %31)
  store i64 %32, i64* %7, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %25
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %7, align 8
  br label %37

37:                                               ; preds = %35, %25
  br label %104

38:                                               ; preds = %15
  %39 = call i32 @mutex_lock(i32* @key_session_mutex)
  %40 = load i8*, i8** %3, align 8
  %41 = call %struct.key* @find_keyring_by_name(i8* %40, i32 0)
  store %struct.key* %41, %struct.key** %6, align 8
  %42 = load %struct.key*, %struct.key** %6, align 8
  %43 = call i64 @PTR_ERR(%struct.key* %42)
  %44 = load i64, i64* @ENOKEY, align 8
  %45 = sub nsw i64 0, %44
  %46 = icmp eq i64 %43, %45
  br i1 %46, label %47, label %72

47:                                               ; preds = %38
  %48 = load i8*, i8** %3, align 8
  %49 = load %struct.cred*, %struct.cred** %4, align 8
  %50 = getelementptr inbounds %struct.cred, %struct.cred* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cred*, %struct.cred** %4, align 8
  %53 = getelementptr inbounds %struct.cred, %struct.cred* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.cred*, %struct.cred** %4, align 8
  %56 = load i32, i32* @KEY_POS_ALL, align 4
  %57 = load i32, i32* @KEY_USR_VIEW, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @KEY_USR_READ, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @KEY_USR_LINK, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @KEY_ALLOC_IN_QUOTA, align 4
  %64 = call %struct.key* @keyring_alloc(i8* %48, i32 %51, i32 %54, %struct.cred* %55, i32 %62, i32 %63, i32* null, i32* null)
  store %struct.key* %64, %struct.key** %6, align 8
  %65 = load %struct.key*, %struct.key** %6, align 8
  %66 = call i64 @IS_ERR(%struct.key* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %47
  %69 = load %struct.key*, %struct.key** %6, align 8
  %70 = call i64 @PTR_ERR(%struct.key* %69)
  store i64 %70, i64* %7, align 8
  br label %109

71:                                               ; preds = %47
  br label %88

72:                                               ; preds = %38
  %73 = load %struct.key*, %struct.key** %6, align 8
  %74 = call i64 @IS_ERR(%struct.key* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.key*, %struct.key** %6, align 8
  %78 = call i64 @PTR_ERR(%struct.key* %77)
  store i64 %78, i64* %7, align 8
  br label %109

79:                                               ; preds = %72
  %80 = load %struct.key*, %struct.key** %6, align 8
  %81 = load %struct.cred*, %struct.cred** %5, align 8
  %82 = getelementptr inbounds %struct.cred, %struct.cred* %81, i32 0, i32 0
  %83 = load %struct.key*, %struct.key** %82, align 8
  %84 = icmp eq %struct.key* %80, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %79
  store i64 0, i64* %7, align 8
  br label %106

86:                                               ; preds = %79
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %71
  %89 = load %struct.cred*, %struct.cred** %5, align 8
  %90 = load %struct.key*, %struct.key** %6, align 8
  %91 = call i64 @install_session_keyring_to_cred(%struct.cred* %89, %struct.key* %90)
  store i64 %91, i64* %7, align 8
  %92 = load i64, i64* %7, align 8
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %88
  br label %106

95:                                               ; preds = %88
  %96 = load %struct.cred*, %struct.cred** %5, align 8
  %97 = call i64 @commit_creds(%struct.cred* %96)
  %98 = call i32 @mutex_unlock(i32* @key_session_mutex)
  %99 = load %struct.key*, %struct.key** %6, align 8
  %100 = getelementptr inbounds %struct.key, %struct.key* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %7, align 8
  %102 = load %struct.key*, %struct.key** %6, align 8
  %103 = call i32 @key_put(%struct.key* %102)
  br label %104

104:                                              ; preds = %95, %37
  %105 = load i64, i64* %7, align 8
  store i64 %105, i64* %2, align 8
  br label %115

106:                                              ; preds = %94, %85
  %107 = load %struct.key*, %struct.key** %6, align 8
  %108 = call i32 @key_put(%struct.key* %107)
  br label %109

109:                                              ; preds = %106, %76, %68
  %110 = call i32 @mutex_unlock(i32* @key_session_mutex)
  br label %111

111:                                              ; preds = %109, %24
  %112 = load %struct.cred*, %struct.cred** %5, align 8
  %113 = call i32 @abort_creds(%struct.cred* %112)
  %114 = load i64, i64* %7, align 8
  store i64 %114, i64* %2, align 8
  br label %115

115:                                              ; preds = %111, %104, %12
  %116 = load i64, i64* %2, align 8
  ret i64 %116
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local %struct.cred* @current_cred(...) #1

declare dso_local i64 @install_session_keyring_to_cred(%struct.cred*, %struct.key*) #1

declare dso_local i64 @commit_creds(%struct.cred*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.key* @find_keyring_by_name(i8*, i32) #1

declare dso_local i64 @PTR_ERR(%struct.key*) #1

declare dso_local %struct.key* @keyring_alloc(i8*, i32, i32, %struct.cred*, i32, i32, i32*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @key_put(%struct.key*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
