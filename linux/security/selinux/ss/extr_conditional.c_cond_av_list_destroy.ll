; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_av_list_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_conditional.c_cond_av_list_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cond_av_list = type { %struct.cond_av_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cond_av_list*)* @cond_av_list_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cond_av_list_destroy(%struct.cond_av_list* %0) #0 {
  %2 = alloca %struct.cond_av_list*, align 8
  %3 = alloca %struct.cond_av_list*, align 8
  %4 = alloca %struct.cond_av_list*, align 8
  store %struct.cond_av_list* %0, %struct.cond_av_list** %2, align 8
  %5 = load %struct.cond_av_list*, %struct.cond_av_list** %2, align 8
  store %struct.cond_av_list* %5, %struct.cond_av_list** %3, align 8
  br label %6

6:                                                ; preds = %15, %1
  %7 = load %struct.cond_av_list*, %struct.cond_av_list** %3, align 8
  %8 = icmp ne %struct.cond_av_list* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %6
  %10 = load %struct.cond_av_list*, %struct.cond_av_list** %3, align 8
  %11 = getelementptr inbounds %struct.cond_av_list, %struct.cond_av_list* %10, i32 0, i32 0
  %12 = load %struct.cond_av_list*, %struct.cond_av_list** %11, align 8
  store %struct.cond_av_list* %12, %struct.cond_av_list** %4, align 8
  %13 = load %struct.cond_av_list*, %struct.cond_av_list** %3, align 8
  %14 = call i32 @kfree(%struct.cond_av_list* %13)
  br label %15

15:                                               ; preds = %9
  %16 = load %struct.cond_av_list*, %struct.cond_av_list** %4, align 8
  store %struct.cond_av_list* %16, %struct.cond_av_list** %3, align 8
  br label %6

17:                                               ; preds = %6
  ret void
}

declare dso_local i32 @kfree(%struct.cond_av_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
