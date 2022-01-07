; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_begin_exit_domain_handler.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/dlm/extr_dlmdomain.c_dlm_begin_exit_domain_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_msg = type { i64 }
%struct.dlm_ctxt = type { i32, i32, i32 }
%struct.dlm_exit_domain = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"%s: Node %u sent a begin exit domain message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.o2net_msg*, i32, i8*, i8**)* @dlm_begin_exit_domain_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dlm_begin_exit_domain_handler(%struct.o2net_msg* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.o2net_msg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.dlm_ctxt*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.dlm_exit_domain*, align 8
  store %struct.o2net_msg* %0, %struct.o2net_msg** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.dlm_ctxt*
  store %struct.dlm_ctxt* %14, %struct.dlm_ctxt** %10, align 8
  %15 = load %struct.o2net_msg*, %struct.o2net_msg** %6, align 8
  %16 = getelementptr inbounds %struct.o2net_msg, %struct.o2net_msg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.dlm_exit_domain*
  store %struct.dlm_exit_domain* %18, %struct.dlm_exit_domain** %12, align 8
  %19 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %20 = call i32 @dlm_grab(%struct.dlm_ctxt* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

23:                                               ; preds = %4
  %24 = load %struct.dlm_exit_domain*, %struct.dlm_exit_domain** %12, align 8
  %25 = getelementptr inbounds %struct.dlm_exit_domain, %struct.dlm_exit_domain* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %28 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %33 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %37 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @set_bit(i32 %35, i32 %38)
  %40 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %41 = getelementptr inbounds %struct.dlm_ctxt, %struct.dlm_ctxt* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  %43 = load %struct.dlm_ctxt*, %struct.dlm_ctxt** %10, align 8
  %44 = call i32 @dlm_put(%struct.dlm_ctxt* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %23, %22
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @dlm_grab(%struct.dlm_ctxt*) #1

declare dso_local i32 @mlog(i32, i8*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dlm_put(%struct.dlm_ctxt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
