; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_register_congestion_control.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_cong.c_tcp_register_congestion_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_congestion_ops = type { i64, i32, i32, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"%s does not implement required ops\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@tcp_cong_list_lock = common dso_local global i32 0, align 4
@TCP_CA_UNSPEC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"%s already registered or non-unique key\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@tcp_cong_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"%s registered\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcp_register_congestion_control(%struct.tcp_congestion_ops* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcp_congestion_ops*, align 8
  %4 = alloca i32, align 4
  store %struct.tcp_congestion_ops* %0, %struct.tcp_congestion_ops** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %6 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %5, i32 0, i32 6
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %11 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %16 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19, %9, %1
  %25 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %72

31:                                               ; preds = %19, %14
  %32 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %36 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @strlen(i32 %37)
  %39 = call i64 @jhash(i32 %34, i32 4, i32 %38)
  %40 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %41 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = call i32 @spin_lock(i32* @tcp_cong_list_lock)
  %43 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %44 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TCP_CA_UNSPEC, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %54, label %48

48:                                               ; preds = %31
  %49 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %50 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i64 @tcp_ca_find_key(i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %48, %31
  %55 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %56 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @pr_notice(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @EEXIST, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %69

61:                                               ; preds = %48
  %62 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %62, i32 0, i32 2
  %64 = call i32 @list_add_tail_rcu(i32* %63, i32* @tcp_cong_list)
  %65 = load %struct.tcp_congestion_ops*, %struct.tcp_congestion_ops** %3, align 8
  %66 = getelementptr inbounds %struct.tcp_congestion_ops, %struct.tcp_congestion_ops* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %61, %54
  %70 = call i32 @spin_unlock(i32* @tcp_cong_list_lock)
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %72

72:                                               ; preds = %69, %24
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i64 @jhash(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @tcp_ca_find_key(i64) #1

declare dso_local i32 @pr_notice(i8*, i32) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
