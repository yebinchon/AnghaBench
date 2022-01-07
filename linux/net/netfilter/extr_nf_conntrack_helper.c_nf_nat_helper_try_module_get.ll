; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_nat_helper_try_module_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_conntrack_helper.c_nf_nat_helper_try_module_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nf_conntrack_helper = type { i8* }
%struct.nf_conntrack_nat_helper = type { i32 }

@NF_CT_HELPER_NAME_LEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nf_nat_helper_try_module_get(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nf_conntrack_helper*, align 8
  %9 = alloca %struct.nf_conntrack_nat_helper*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @NF_CT_HELPER_NAME_LEN, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  store i32 0, i32* %12, align 4
  %18 = call i32 (...) @rcu_read_lock()
  %19 = load i8*, i8** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8* %19, i32 %20, i32 %21)
  store %struct.nf_conntrack_helper* %22, %struct.nf_conntrack_helper** %8, align 8
  %23 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %24 = icmp ne %struct.nf_conntrack_helper* %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = call i32 (...) @rcu_read_unlock()
  %27 = load i32, i32* @ENOENT, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

29:                                               ; preds = %3
  %30 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %31 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call %struct.nf_conntrack_nat_helper* @nf_conntrack_nat_helper_find(i8* %32)
  store %struct.nf_conntrack_nat_helper* %33, %struct.nf_conntrack_nat_helper** %9, align 8
  %34 = load %struct.nf_conntrack_nat_helper*, %struct.nf_conntrack_nat_helper** %9, align 8
  %35 = icmp ne %struct.nf_conntrack_nat_helper* %34, null
  br i1 %35, label %53, label %36

36:                                               ; preds = %29
  %37 = trunc i64 %15 to i32
  %38 = load %struct.nf_conntrack_helper*, %struct.nf_conntrack_helper** %8, align 8
  %39 = getelementptr inbounds %struct.nf_conntrack_helper, %struct.nf_conntrack_helper* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @snprintf(i8* %17, i32 %37, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %40)
  %42 = call i32 (...) @rcu_read_unlock()
  %43 = call i32 @request_module(i8* %17)
  %44 = call i32 (...) @rcu_read_lock()
  %45 = call %struct.nf_conntrack_nat_helper* @nf_conntrack_nat_helper_find(i8* %17)
  store %struct.nf_conntrack_nat_helper* %45, %struct.nf_conntrack_nat_helper** %9, align 8
  %46 = load %struct.nf_conntrack_nat_helper*, %struct.nf_conntrack_nat_helper** %9, align 8
  %47 = icmp ne %struct.nf_conntrack_nat_helper* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %36
  %49 = call i32 (...) @rcu_read_unlock()
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52, %29
  %54 = load %struct.nf_conntrack_nat_helper*, %struct.nf_conntrack_nat_helper** %9, align 8
  %55 = getelementptr inbounds %struct.nf_conntrack_nat_helper, %struct.nf_conntrack_nat_helper* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @try_module_get(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %53
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %62

62:                                               ; preds = %59, %53
  %63 = call i32 (...) @rcu_read_unlock()
  %64 = load i32, i32* %12, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %13, align 4
  br label %65

65:                                               ; preds = %62, %48, %25
  %66 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %66)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @rcu_read_lock(...) #2

declare dso_local %struct.nf_conntrack_helper* @__nf_conntrack_helper_find(i8*, i32, i32) #2

declare dso_local i32 @rcu_read_unlock(...) #2

declare dso_local %struct.nf_conntrack_nat_helper* @nf_conntrack_nat_helper_find(i8*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @request_module(i8*) #2

declare dso_local i32 @try_module_get(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
