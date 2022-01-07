; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type_register.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_core.c_ip_set_type_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set_type = type { i64, i32, i32, i32, i32, i32 }

@IPSET_PROTOCOL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [84 x i8] c"ip_set type %s, family %s, revision %u:%u uses wrong protocol version %u (want %u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"ip_set type %s, family %s with revision min %u already registered!\0A\00", align 1
@ip_set_type_list = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"type %s, family %s, revision %u:%u registered.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_set_type_register(%struct.ip_set_type* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ip_set_type*, align 8
  %4 = alloca i32, align 4
  store %struct.ip_set_type* %0, %struct.ip_set_type** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %6 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @IPSET_PROTOCOL, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %12 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %15 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @family_name(i32 %16)
  %18 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %19 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %22 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %25 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @IPSET_PROTOCOL, align 8
  %28 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %17, i32 %20, i32 %23, i64 %26, i64 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %1
  %32 = call i32 (...) @ip_set_type_lock()
  %33 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %34 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %37 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %40 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @find_set_type(i32 %35, i32 %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %59

44:                                               ; preds = %31
  %45 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %46 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %49 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @family_name(i32 %50)
  %52 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %53 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i8*, i32, i32, i32, ...) @pr_warn(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %51, i32 %54)
  %56 = call i32 (...) @ip_set_type_unlock()
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %79

59:                                               ; preds = %31
  %60 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %61 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %60, i32 0, i32 5
  %62 = call i32 @list_add_rcu(i32* %61, i32* @ip_set_type_list)
  %63 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %64 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %67 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @family_name(i32 %68)
  %70 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %71 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ip_set_type*, %struct.ip_set_type** %3, align 8
  %74 = getelementptr inbounds %struct.ip_set_type, %struct.ip_set_type* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @pr_debug(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %69, i32 %72, i32 %75)
  %77 = call i32 (...) @ip_set_type_unlock()
  %78 = load i32, i32* %4, align 4
  store i32 %78, i32* %2, align 4
  br label %79

79:                                               ; preds = %59, %44, %10
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @pr_warn(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @family_name(i32) #1

declare dso_local i32 @ip_set_type_lock(...) #1

declare dso_local i64 @find_set_type(i32, i32, i32) #1

declare dso_local i32 @ip_set_type_unlock(...) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
