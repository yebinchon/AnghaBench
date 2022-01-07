; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_grow.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_sock_reuseport.c_reuseport_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_reuseport = type { i32, i32, %struct.TYPE_3__**, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@U16_MAX = common dso_local global i64 0, align 8
@rcu = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sock_reuseport* (%struct.sock_reuseport*)* @reuseport_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sock_reuseport* @reuseport_grow(%struct.sock_reuseport* %0) #0 {
  %2 = alloca %struct.sock_reuseport*, align 8
  %3 = alloca %struct.sock_reuseport*, align 8
  %4 = alloca %struct.sock_reuseport*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.sock_reuseport* %0, %struct.sock_reuseport** %3, align 8
  %7 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %8 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul i32 %9, 2
  %11 = zext i32 %10 to i64
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @U16_MAX, align 8
  %14 = icmp ugt i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.sock_reuseport* null, %struct.sock_reuseport** %2, align 8
  br label %92

16:                                               ; preds = %1
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.sock_reuseport* @__reuseport_alloc(i64 %17)
  store %struct.sock_reuseport* %18, %struct.sock_reuseport** %4, align 8
  %19 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %20 = icmp ne %struct.sock_reuseport* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  store %struct.sock_reuseport* null, %struct.sock_reuseport** %2, align 8
  br label %92

22:                                               ; preds = %16
  %23 = load i64, i64* %5, align 8
  %24 = trunc i64 %23 to i32
  %25 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %26 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %28 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %31 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %33 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %36 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %35, i32 0, i32 6
  store i32 %34, i32* %36, align 4
  %37 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %38 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %41 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %40, i32 0, i32 5
  store i32 %39, i32* %41, align 8
  %42 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %43 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %46 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %48 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %47, i32 0, i32 2
  %49 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %48, align 8
  %50 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %51 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %50, i32 0, i32 2
  %52 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %51, align 8
  %53 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %54 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  %59 = call i32 @memcpy(%struct.TYPE_3__** %49, %struct.TYPE_3__** %52, i32 %58)
  %60 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %61 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @READ_ONCE(i32 %62)
  %64 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %65 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  store i64 0, i64* %6, align 8
  br label %66

66:                                               ; preds = %84, %22
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %69 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp ult i64 %67, %71
  br i1 %72, label %73, label %87

73:                                               ; preds = %66
  %74 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %75 = getelementptr inbounds %struct.sock_reuseport, %struct.sock_reuseport* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %76, i64 %77
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  %83 = call i32 @rcu_assign_pointer(i32 %81, %struct.sock_reuseport* %82)
  br label %84

84:                                               ; preds = %73
  %85 = load i64, i64* %6, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %6, align 8
  br label %66

87:                                               ; preds = %66
  %88 = load %struct.sock_reuseport*, %struct.sock_reuseport** %3, align 8
  %89 = load i32, i32* @rcu, align 4
  %90 = call i32 @kfree_rcu(%struct.sock_reuseport* %88, i32 %89)
  %91 = load %struct.sock_reuseport*, %struct.sock_reuseport** %4, align 8
  store %struct.sock_reuseport* %91, %struct.sock_reuseport** %2, align 8
  br label %92

92:                                               ; preds = %87, %21, %15
  %93 = load %struct.sock_reuseport*, %struct.sock_reuseport** %2, align 8
  ret %struct.sock_reuseport* %93
}

declare dso_local %struct.sock_reuseport* @__reuseport_alloc(i64) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__**, %struct.TYPE_3__**, i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.sock_reuseport*) #1

declare dso_local i32 @kfree_rcu(%struct.sock_reuseport*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
