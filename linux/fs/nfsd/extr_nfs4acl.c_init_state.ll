; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_init_state.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4acl.c_init_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.posix_acl_state = type { i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.posix_acl_state*, i32)* @init_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_state(%struct.posix_acl_state* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.posix_acl_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.posix_acl_state* %0, %struct.posix_acl_state** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %8 = call i32 @memset(%struct.posix_acl_state* %7, i32 0, i32 24)
  %9 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %10 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %9, i32 0, i32 0
  store i32 1, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = add i64 4, %13
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i8* @kzalloc(i32 %16, i32 %17)
  %19 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %20 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %19, i32 0, i32 1
  store i8* %18, i8** %20, align 8
  %21 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %22 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %21, i32 0, i32 1
  %23 = load i8*, i8** %22, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %46

28:                                               ; preds = %2
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i8* @kzalloc(i32 %29, i32 %30)
  %32 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %33 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  %34 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %35 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %34, i32 0, i32 2
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %45, label %38

38:                                               ; preds = %28
  %39 = load %struct.posix_acl_state*, %struct.posix_acl_state** %4, align 8
  %40 = getelementptr inbounds %struct.posix_acl_state, %struct.posix_acl_state* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @kfree(i8* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %38, %25
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @memset(%struct.posix_acl_state*, i32, i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
