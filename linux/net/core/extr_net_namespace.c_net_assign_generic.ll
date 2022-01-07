; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_net_assign_generic.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_net_namespace.c_net_assign_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.net_generic = type { i8**, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MIN_PERNET_OPS_ID = common dso_local global i32 0, align 4
@pernet_ops_rwsem = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, i32, i8*)* @net_assign_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_assign_generic(%struct.net* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.net_generic*, align 8
  %9 = alloca %struct.net_generic*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MIN_PERNET_OPS_ID, align 4
  %12 = icmp ult i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @BUG_ON(i32 %13)
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = getelementptr inbounds %struct.net, %struct.net* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @lockdep_is_held(i32* @pernet_ops_rwsem)
  %19 = call %struct.net_generic* @rcu_dereference_protected(i32 %17, i32 %18)
  store %struct.net_generic* %19, %struct.net_generic** %9, align 8
  %20 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %21 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = icmp ugt i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %29 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %28, i32 0, i32 0
  %30 = load i8**, i8*** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  store i8* %27, i8** %33, align 8
  store i32 0, i32* %4, align 4
  br label %79

34:                                               ; preds = %3
  %35 = call %struct.net_generic* (...) @net_alloc_generic()
  store %struct.net_generic* %35, %struct.net_generic** %8, align 8
  %36 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %37 = icmp eq %struct.net_generic* %36, null
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %79

41:                                               ; preds = %34
  %42 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %43 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %42, i32 0, i32 0
  %44 = load i8**, i8*** %43, align 8
  %45 = load i32, i32* @MIN_PERNET_OPS_ID, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %49 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %48, i32 0, i32 0
  %50 = load i8**, i8*** %49, align 8
  %51 = load i32, i32* @MIN_PERNET_OPS_ID, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i8*, i8** %50, i64 %52
  %54 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %55 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MIN_PERNET_OPS_ID, align 4
  %59 = sub i32 %57, %58
  %60 = zext i32 %59 to i64
  %61 = mul i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @memcpy(i8** %47, i8** %53, i32 %62)
  %64 = load i8*, i8** %7, align 8
  %65 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %66 = getelementptr inbounds %struct.net_generic, %struct.net_generic* %65, i32 0, i32 0
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.net*, %struct.net** %5, align 8
  %72 = getelementptr inbounds %struct.net, %struct.net* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.net_generic*, %struct.net_generic** %8, align 8
  %75 = call i32 @rcu_assign_pointer(i32 %73, %struct.net_generic* %74)
  %76 = load %struct.net_generic*, %struct.net_generic** %9, align 8
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @s, i32 0, i32 0), align 4
  %78 = call i32 @kfree_rcu(%struct.net_generic* %76, i32 %77)
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %41, %38, %26
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.net_generic* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.net_generic* @net_alloc_generic(...) #1

declare dso_local i32 @memcpy(i8**, i8**, i32) #1

declare dso_local i32 @rcu_assign_pointer(i32, %struct.net_generic*) #1

declare dso_local i32 @kfree_rcu(%struct.net_generic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
