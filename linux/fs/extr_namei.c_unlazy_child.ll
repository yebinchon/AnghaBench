; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_unlazy_child.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_unlazy_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.dentry = type { i32, i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.dentry*, i32)* @unlazy_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unlazy_child(%struct.nameidata* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %9 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @LOOKUP_RCU, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @LOOKUP_RCU, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %20 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 8
  %23 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %24 = call i32 @legitimize_links(%struct.nameidata* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %3
  br label %88

31:                                               ; preds = %3
  %32 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %33 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %37 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @legitimize_mnt(i32* %35, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %88

46:                                               ; preds = %31
  %47 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = call i32 @lockref_get_not_dead(i32* %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %92

59:                                               ; preds = %46
  %60 = load %struct.dentry*, %struct.dentry** %6, align 8
  %61 = getelementptr inbounds %struct.dentry, %struct.dentry* %60, i32 0, i32 1
  %62 = call i32 @lockref_get_not_dead(i32* %61)
  %63 = icmp ne i32 %62, 0
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %59
  br label %96

69:                                               ; preds = %59
  %70 = load %struct.dentry*, %struct.dentry** %6, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @read_seqcount_retry(i32* %71, i32 %72)
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %100

77:                                               ; preds = %69
  %78 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %79 = call i32 @legitimize_root(%struct.nameidata* %78)
  %80 = icmp ne i32 %79, 0
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %77
  br label %100

86:                                               ; preds = %77
  %87 = call i32 (...) @rcu_read_unlock()
  store i32 0, i32* %4, align 4
  br label %106

88:                                               ; preds = %45, %30
  %89 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %90 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %88, %58
  %93 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %94 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %95, align 8
  br label %96

96:                                               ; preds = %92, %68
  %97 = call i32 (...) @rcu_read_unlock()
  %98 = load i32, i32* @ECHILD, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %4, align 4
  br label %106

100:                                              ; preds = %85, %76
  %101 = call i32 (...) @rcu_read_unlock()
  %102 = load %struct.dentry*, %struct.dentry** %6, align 8
  %103 = call i32 @dput(%struct.dentry* %102)
  %104 = load i32, i32* @ECHILD, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %100, %96, %86
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @legitimize_links(%struct.nameidata*) #1

declare dso_local i32 @legitimize_mnt(i32*, i32) #1

declare dso_local i32 @lockref_get_not_dead(i32*) #1

declare dso_local i32 @read_seqcount_retry(i32*, i32) #1

declare dso_local i32 @legitimize_root(%struct.nameidata*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
