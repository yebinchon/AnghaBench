; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_install_process_keyring.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_process_keys.c_install_process_keyring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cred = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @install_process_keyring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @install_process_keyring() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.cred*, align 8
  %3 = alloca i32, align 4
  %4 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %4, %struct.cred** %2, align 8
  %5 = load %struct.cred*, %struct.cred** %2, align 8
  %6 = icmp ne %struct.cred* %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %1, align 4
  br label %22

10:                                               ; preds = %0
  %11 = load %struct.cred*, %struct.cred** %2, align 8
  %12 = call i32 @install_process_keyring_to_cred(%struct.cred* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.cred*, %struct.cred** %2, align 8
  %17 = call i32 @abort_creds(%struct.cred* %16)
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* %1, align 4
  br label %22

19:                                               ; preds = %10
  %20 = load %struct.cred*, %struct.cred** %2, align 8
  %21 = call i32 @commit_creds(%struct.cred* %20)
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %19, %15, %7
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @install_process_keyring_to_cred(%struct.cred*) #1

declare dso_local i32 @abort_creds(%struct.cred*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
