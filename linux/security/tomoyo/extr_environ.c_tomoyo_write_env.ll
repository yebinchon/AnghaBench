; ModuleID = '/home/carl/AnghaBench/linux/security/tomoyo/extr_environ.c_tomoyo_write_env.c'
source_filename = "/home/carl/AnghaBench/linux/security/tomoyo/extr_environ.c_tomoyo_write_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tomoyo_acl_param = type { i32 }
%struct.tomoyo_env_acl = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TOMOYO_TYPE_ENV_ACL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@tomoyo_same_env_acl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tomoyo_acl_param*)* @tomoyo_write_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tomoyo_write_env(%struct.tomoyo_acl_param* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tomoyo_acl_param*, align 8
  %4 = alloca %struct.tomoyo_env_acl, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.tomoyo_acl_param* %0, %struct.tomoyo_acl_param** %3, align 8
  %7 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 0
  store i32 0, i32* %7, align 4
  %8 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* @TOMOYO_TYPE_ENV_ACL, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %14 = call i8* @tomoyo_read_token(%struct.tomoyo_acl_param* %13)
  store i8* %14, i8** %6, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = call i32 @tomoyo_correct_word(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i8*, i8** %6, align 8
  %20 = call i64 @strchr(i8* %19, i8 signext 61)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %18
  %26 = load i8*, i8** %6, align 8
  %27 = call i32 @tomoyo_get_name(i8* %26)
  %28 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %2, align 4
  br label %43

34:                                               ; preds = %25
  %35 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 1
  %36 = load %struct.tomoyo_acl_param*, %struct.tomoyo_acl_param** %3, align 8
  %37 = load i32, i32* @tomoyo_same_env_acl, align 4
  %38 = call i32 @tomoyo_update_domain(%struct.TYPE_2__* %35, i32 8, %struct.tomoyo_acl_param* %36, i32 %37, i32* null)
  store i32 %38, i32* %5, align 4
  %39 = getelementptr inbounds %struct.tomoyo_env_acl, %struct.tomoyo_env_acl* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @tomoyo_put_name(i32 %40)
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %34, %32, %22
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @tomoyo_read_token(%struct.tomoyo_acl_param*) #1

declare dso_local i32 @tomoyo_correct_word(i8*) #1

declare dso_local i64 @strchr(i8*, i8 signext) #1

declare dso_local i32 @tomoyo_get_name(i8*) #1

declare dso_local i32 @tomoyo_update_domain(%struct.TYPE_2__*, i32, %struct.tomoyo_acl_param*, i32, i32*) #1

declare dso_local i32 @tomoyo_put_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
