; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_sk.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_diag.c_inet_diag_bc_sk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.sock = type { i64, i64, i32, i32, i32 }
%struct.inet_sock = type { i32, i32 }
%struct.inet_diag_entry = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@TCP_NEW_SYN_RECV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @inet_diag_bc_sk(%struct.nlattr* %0, %struct.sock* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlattr*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.inet_sock*, align 8
  %7 = alloca %struct.inet_diag_entry, align 8
  store %struct.nlattr* %0, %struct.nlattr** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = call %struct.inet_sock* @inet_sk(%struct.sock* %8)
  store %struct.inet_sock* %9, %struct.inet_sock** %6, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %71

13:                                               ; preds = %2
  %14 = load %struct.sock*, %struct.sock** %5, align 8
  %15 = getelementptr inbounds %struct.sock, %struct.sock* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 5
  store i32 %16, i32* %17, align 8
  %18 = load %struct.sock*, %struct.sock** %5, align 8
  %19 = call i32 @entry_fill_addrs(%struct.inet_diag_entry* %7, %struct.sock* %18)
  %20 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %21 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.inet_sock*, %struct.inet_sock** %6, align 8
  %25 = getelementptr inbounds %struct.inet_sock, %struct.inet_sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  %28 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 3
  store i32 %27, i32* %28, align 8
  %29 = load %struct.sock*, %struct.sock** %5, align 8
  %30 = getelementptr inbounds %struct.sock, %struct.sock* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 2
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sock*, %struct.sock** %5, align 8
  %34 = call i64 @sk_fullsock(%struct.sock* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %13
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = getelementptr inbounds %struct.sock, %struct.sock* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  br label %41

40:                                               ; preds = %13
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ %39, %36 ], [ 0, %40 ]
  %43 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 1
  store i32 %42, i32* %43, align 8
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = call i64 @sk_fullsock(%struct.sock* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %41
  %48 = load %struct.sock*, %struct.sock** %5, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 0
  store i64 %50, i64* %51, align 8
  br label %68

52:                                               ; preds = %41
  %53 = load %struct.sock*, %struct.sock** %5, align 8
  %54 = getelementptr inbounds %struct.sock, %struct.sock* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @TCP_NEW_SYN_RECV, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call i32 @inet_reqsk(%struct.sock* %59)
  %61 = call %struct.TYPE_2__* @inet_rsk(i32 %60)
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 0
  store i64 %63, i64* %64, align 8
  br label %67

65:                                               ; preds = %52
  %66 = getelementptr inbounds %struct.inet_diag_entry, %struct.inet_diag_entry* %7, i32 0, i32 0
  store i64 0, i64* %66, align 8
  br label %67

67:                                               ; preds = %65, %58
  br label %68

68:                                               ; preds = %67, %47
  %69 = load %struct.nlattr*, %struct.nlattr** %4, align 8
  %70 = call i32 @inet_diag_bc_run(%struct.nlattr* %69, %struct.inet_diag_entry* %7)
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %68, %12
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.inet_sock* @inet_sk(%struct.sock*) #1

declare dso_local i32 @entry_fill_addrs(%struct.inet_diag_entry*, %struct.sock*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @sk_fullsock(%struct.sock*) #1

declare dso_local %struct.TYPE_2__* @inet_rsk(i32) #1

declare dso_local i32 @inet_reqsk(%struct.sock*) #1

declare dso_local i32 @inet_diag_bc_run(%struct.nlattr*, %struct.inet_diag_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
