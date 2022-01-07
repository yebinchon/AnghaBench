; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_groups.c_set_current_groups.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_groups.c_set_current_groups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.group_info = type { i32 }
%struct.cred = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_current_groups(%struct.group_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.group_info*, align 8
  %4 = alloca %struct.cred*, align 8
  store %struct.group_info* %0, %struct.group_info** %3, align 8
  %5 = call %struct.cred* (...) @prepare_creds()
  store %struct.cred* %5, %struct.cred** %4, align 8
  %6 = load %struct.cred*, %struct.cred** %4, align 8
  %7 = icmp ne %struct.cred* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %17

11:                                               ; preds = %1
  %12 = load %struct.cred*, %struct.cred** %4, align 8
  %13 = load %struct.group_info*, %struct.group_info** %3, align 8
  %14 = call i32 @set_groups(%struct.cred* %12, %struct.group_info* %13)
  %15 = load %struct.cred*, %struct.cred** %4, align 8
  %16 = call i32 @commit_creds(%struct.cred* %15)
  store i32 %16, i32* %2, align 4
  br label %17

17:                                               ; preds = %11, %8
  %18 = load i32, i32* %2, align 4
  ret i32 %18
}

declare dso_local %struct.cred* @prepare_creds(...) #1

declare dso_local i32 @set_groups(%struct.cred*, %struct.group_info*) #1

declare dso_local i32 @commit_creds(%struct.cred*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
