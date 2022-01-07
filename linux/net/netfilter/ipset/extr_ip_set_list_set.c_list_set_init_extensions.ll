; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_init_extensions.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipset/extr_ip_set_list_set.c_list_set_init_extensions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_set = type { i32 }
%struct.ip_set_ext = type { i32 }
%struct.set_elem = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_set*, %struct.ip_set_ext*, %struct.set_elem*)* @list_set_init_extensions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_set_init_extensions(%struct.ip_set* %0, %struct.ip_set_ext* %1, %struct.set_elem* %2) #0 {
  %4 = alloca %struct.ip_set*, align 8
  %5 = alloca %struct.ip_set_ext*, align 8
  %6 = alloca %struct.set_elem*, align 8
  store %struct.ip_set* %0, %struct.ip_set** %4, align 8
  store %struct.ip_set_ext* %1, %struct.ip_set_ext** %5, align 8
  store %struct.set_elem* %2, %struct.set_elem** %6, align 8
  %7 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %8 = call i64 @SET_WITH_COUNTER(%struct.ip_set* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %12 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %13 = call i32 @ext_counter(%struct.set_elem* %11, %struct.ip_set* %12)
  %14 = load %struct.ip_set_ext*, %struct.ip_set_ext** %5, align 8
  %15 = call i32 @ip_set_init_counter(i32 %13, %struct.ip_set_ext* %14)
  br label %16

16:                                               ; preds = %10, %3
  %17 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %18 = call i64 @SET_WITH_COMMENT(%struct.ip_set* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %16
  %21 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %22 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %23 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %24 = call i32 @ext_comment(%struct.set_elem* %22, %struct.ip_set* %23)
  %25 = load %struct.ip_set_ext*, %struct.ip_set_ext** %5, align 8
  %26 = call i32 @ip_set_init_comment(%struct.ip_set* %21, i32 %24, %struct.ip_set_ext* %25)
  br label %27

27:                                               ; preds = %20, %16
  %28 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %29 = call i64 @SET_WITH_SKBINFO(%struct.ip_set* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %27
  %32 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %33 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %34 = call i32 @ext_skbinfo(%struct.set_elem* %32, %struct.ip_set* %33)
  %35 = load %struct.ip_set_ext*, %struct.ip_set_ext** %5, align 8
  %36 = call i32 @ip_set_init_skbinfo(i32 %34, %struct.ip_set_ext* %35)
  br label %37

37:                                               ; preds = %31, %27
  %38 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %39 = call i64 @SET_WITH_TIMEOUT(%struct.ip_set* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.set_elem*, %struct.set_elem** %6, align 8
  %43 = load %struct.ip_set*, %struct.ip_set** %4, align 8
  %44 = call i32 @ext_timeout(%struct.set_elem* %42, %struct.ip_set* %43)
  %45 = load %struct.ip_set_ext*, %struct.ip_set_ext** %5, align 8
  %46 = getelementptr inbounds %struct.ip_set_ext, %struct.ip_set_ext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ip_set_timeout_set(i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %41, %37
  ret void
}

declare dso_local i64 @SET_WITH_COUNTER(%struct.ip_set*) #1

declare dso_local i32 @ip_set_init_counter(i32, %struct.ip_set_ext*) #1

declare dso_local i32 @ext_counter(%struct.set_elem*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_COMMENT(%struct.ip_set*) #1

declare dso_local i32 @ip_set_init_comment(%struct.ip_set*, i32, %struct.ip_set_ext*) #1

declare dso_local i32 @ext_comment(%struct.set_elem*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_SKBINFO(%struct.ip_set*) #1

declare dso_local i32 @ip_set_init_skbinfo(i32, %struct.ip_set_ext*) #1

declare dso_local i32 @ext_skbinfo(%struct.set_elem*, %struct.ip_set*) #1

declare dso_local i64 @SET_WITH_TIMEOUT(%struct.ip_set*) #1

declare dso_local i32 @ip_set_timeout_set(i32, i32) #1

declare dso_local i32 @ext_timeout(%struct.set_elem*, %struct.ip_set*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
