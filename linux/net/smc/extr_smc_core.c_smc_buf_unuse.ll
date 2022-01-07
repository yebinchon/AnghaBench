; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_buf_unuse.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smc_buf_unuse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_connection = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.smc_link_group = type { i32, i32*, i32 }

@SMC_SINGLE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smc_connection*, %struct.smc_link_group*)* @smc_buf_unuse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_buf_unuse(%struct.smc_connection* %0, %struct.smc_link_group* %1) #0 {
  %3 = alloca %struct.smc_connection*, align 8
  %4 = alloca %struct.smc_link_group*, align 8
  store %struct.smc_connection* %0, %struct.smc_connection** %3, align 8
  store %struct.smc_link_group* %1, %struct.smc_link_group** %4, align 8
  %5 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %6 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = icmp ne %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %11 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  br label %14

14:                                               ; preds = %9, %2
  %15 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %16 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = icmp ne %struct.TYPE_5__* %17, null
  br i1 %18, label %19, label %64

19:                                               ; preds = %14
  %20 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %21 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %46, label %26

26:                                               ; preds = %19
  %27 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %28 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %33 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i64, i64* @SMC_SINGLE_LINK, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %38 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = call i32 @smc_llc_do_delete_rkey(i32* %36, %struct.TYPE_5__* %39)
  br label %41

41:                                               ; preds = %31, %26
  %42 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %43 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  br label %63

46:                                               ; preds = %19
  %47 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %48 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %47, i32 0, i32 0
  %49 = call i32 @write_lock_bh(i32* %48)
  %50 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %51 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  %54 = call i32 @list_del(i32* %53)
  %55 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %56 = getelementptr inbounds %struct.smc_link_group, %struct.smc_link_group* %55, i32 0, i32 0
  %57 = call i32 @write_unlock_bh(i32* %56)
  %58 = load %struct.smc_link_group*, %struct.smc_link_group** %4, align 8
  %59 = load %struct.smc_connection*, %struct.smc_connection** %3, align 8
  %60 = getelementptr inbounds %struct.smc_connection, %struct.smc_connection* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = call i32 @smc_buf_free(%struct.smc_link_group* %58, i32 1, %struct.TYPE_5__* %61)
  br label %63

63:                                               ; preds = %46, %41
  br label %64

64:                                               ; preds = %63, %14
  ret void
}

declare dso_local i32 @smc_llc_do_delete_rkey(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @write_lock_bh(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @write_unlock_bh(i32*) #1

declare dso_local i32 @smc_buf_free(%struct.smc_link_group*, i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
