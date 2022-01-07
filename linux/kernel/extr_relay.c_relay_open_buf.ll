; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_open_buf.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_relay.c_relay_open_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rchan_buf = type { i32 }
%struct.rchan = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { %struct.dentry* (i32*, i32*, i32, %struct.rchan_buf*, i32*)* }
%struct.dentry = type { i32 }

@S_IRUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rchan_buf* (%struct.rchan*, i32)* @relay_open_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rchan_buf* @relay_open_buf(%struct.rchan* %0, i32 %1) #0 {
  %3 = alloca %struct.rchan_buf*, align 8
  %4 = alloca %struct.rchan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.rchan_buf*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.rchan* %0, %struct.rchan** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.rchan_buf* null, %struct.rchan_buf** %6, align 8
  %8 = load %struct.rchan*, %struct.rchan** %4, align 8
  %9 = getelementptr inbounds %struct.rchan, %struct.rchan* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load %struct.rchan*, %struct.rchan** %4, align 8
  %14 = getelementptr inbounds %struct.rchan, %struct.rchan* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.rchan_buf** @per_cpu_ptr(i32 %15, i32 0)
  %17 = load %struct.rchan_buf*, %struct.rchan_buf** %16, align 8
  store %struct.rchan_buf* %17, %struct.rchan_buf** %3, align 8
  br label %80

18:                                               ; preds = %2
  %19 = load %struct.rchan*, %struct.rchan** %4, align 8
  %20 = call %struct.rchan_buf* @relay_create_buf(%struct.rchan* %19)
  store %struct.rchan_buf* %20, %struct.rchan_buf** %6, align 8
  %21 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %22 = icmp ne %struct.rchan_buf* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  store %struct.rchan_buf* null, %struct.rchan_buf** %3, align 8
  br label %80

24:                                               ; preds = %18
  %25 = load %struct.rchan*, %struct.rchan** %4, align 8
  %26 = getelementptr inbounds %struct.rchan, %struct.rchan* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load %struct.rchan*, %struct.rchan** %4, align 8
  %31 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call %struct.dentry* @relay_create_buf_file(%struct.rchan* %30, %struct.rchan_buf* %31, i32 %32)
  store %struct.dentry* %33, %struct.dentry** %7, align 8
  %34 = load %struct.dentry*, %struct.dentry** %7, align 8
  %35 = icmp ne %struct.dentry* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %77

37:                                               ; preds = %29
  %38 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @relay_set_buf_dentry(%struct.rchan_buf* %38, %struct.dentry* %39)
  br label %57

41:                                               ; preds = %24
  %42 = load %struct.rchan*, %struct.rchan** %4, align 8
  %43 = getelementptr inbounds %struct.rchan, %struct.rchan* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.dentry* (i32*, i32*, i32, %struct.rchan_buf*, i32*)*, %struct.dentry* (i32*, i32*, i32, %struct.rchan_buf*, i32*)** %45, align 8
  %47 = load i32, i32* @S_IRUSR, align 4
  %48 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %49 = load %struct.rchan*, %struct.rchan** %4, align 8
  %50 = getelementptr inbounds %struct.rchan, %struct.rchan* %49, i32 0, i32 1
  %51 = call %struct.dentry* %46(i32* null, i32* null, i32 %47, %struct.rchan_buf* %48, i32* %50)
  store %struct.dentry* %51, %struct.dentry** %7, align 8
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %77

56:                                               ; preds = %41
  br label %57

57:                                               ; preds = %56, %37
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %60 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %62 = call i32 @__relay_reset(%struct.rchan_buf* %61, i32 1)
  %63 = load %struct.rchan*, %struct.rchan** %4, align 8
  %64 = getelementptr inbounds %struct.rchan, %struct.rchan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %57
  %68 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %69 = load %struct.rchan*, %struct.rchan** %4, align 8
  %70 = getelementptr inbounds %struct.rchan, %struct.rchan* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.rchan_buf** @per_cpu_ptr(i32 %71, i32 0)
  store %struct.rchan_buf* %68, %struct.rchan_buf** %72, align 8
  %73 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %74 = getelementptr inbounds %struct.rchan_buf, %struct.rchan_buf* %73, i32 0, i32 0
  store i32 0, i32* %74, align 4
  br label %75

75:                                               ; preds = %67, %57
  %76 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  store %struct.rchan_buf* %76, %struct.rchan_buf** %3, align 8
  br label %80

77:                                               ; preds = %55, %36
  %78 = load %struct.rchan_buf*, %struct.rchan_buf** %6, align 8
  %79 = call i32 @relay_destroy_buf(%struct.rchan_buf* %78)
  store %struct.rchan_buf* null, %struct.rchan_buf** %3, align 8
  br label %80

80:                                               ; preds = %77, %75, %23, %12
  %81 = load %struct.rchan_buf*, %struct.rchan_buf** %3, align 8
  ret %struct.rchan_buf* %81
}

declare dso_local %struct.rchan_buf** @per_cpu_ptr(i32, i32) #1

declare dso_local %struct.rchan_buf* @relay_create_buf(%struct.rchan*) #1

declare dso_local %struct.dentry* @relay_create_buf_file(%struct.rchan*, %struct.rchan_buf*, i32) #1

declare dso_local i32 @relay_set_buf_dentry(%struct.rchan_buf*, %struct.dentry*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @__relay_reset(%struct.rchan_buf*, i32) #1

declare dso_local i32 @relay_destroy_buf(%struct.rchan_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
