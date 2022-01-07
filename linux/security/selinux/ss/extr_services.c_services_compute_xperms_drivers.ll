; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_services_compute_xperms_drivers.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_services.c_services_compute_xperms_drivers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extended_perms = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.avtab_node = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@AVTAB_XPERMS_IOCTLDRIVER = common dso_local global i64 0, align 8
@AVTAB_XPERMS_IOCTLFUNCTION = common dso_local global i64 0, align 8
@AVTAB_XPERMS_ALLOWED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @services_compute_xperms_drivers(%struct.extended_perms* %0, %struct.avtab_node* %1) #0 {
  %3 = alloca %struct.extended_perms*, align 8
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca i32, align 4
  store %struct.extended_perms* %0, %struct.extended_perms** %3, align 8
  store %struct.avtab_node* %1, %struct.avtab_node** %4, align 8
  %6 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %7 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AVTAB_XPERMS_IOCTLDRIVER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %50

15:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.extended_perms*, %struct.extended_perms** %3, align 8
  %19 = getelementptr inbounds %struct.extended_perms, %struct.extended_perms* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @ARRAY_SIZE(i32* %21)
  %23 = icmp ult i32 %17, %22
  br i1 %23, label %24, label %49

24:                                               ; preds = %16
  %25 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %26 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.extended_perms*, %struct.extended_perms** %3, align 8
  %38 = getelementptr inbounds %struct.extended_perms, %struct.extended_perms* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %36
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %24
  %47 = load i32, i32* %5, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %16

49:                                               ; preds = %16
  br label %74

50:                                               ; preds = %2
  %51 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %52 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AVTAB_XPERMS_IOCTLFUNCTION, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %50
  %61 = load %struct.extended_perms*, %struct.extended_perms** %3, align 8
  %62 = getelementptr inbounds %struct.extended_perms, %struct.extended_perms* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %66 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @security_xperm_set(i32* %64, i32 %71)
  br label %73

73:                                               ; preds = %60, %50
  br label %74

74:                                               ; preds = %73, %49
  %75 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %76 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @AVTAB_XPERMS_ALLOWED, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load %struct.extended_perms*, %struct.extended_perms** %3, align 8
  %84 = getelementptr inbounds %struct.extended_perms, %struct.extended_perms* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  br label %85

85:                                               ; preds = %82, %74
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @security_xperm_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
