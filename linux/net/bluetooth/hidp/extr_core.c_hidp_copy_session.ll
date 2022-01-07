; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_copy_session.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/hidp/extr_core.c_hidp_copy_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hidp_session = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i8*, i32, i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.hidp_conninfo = type { i32, i32, i32, i32, i32, i32, i32 }

@BT_CONNECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"HID Boot Device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hidp_session*, %struct.hidp_conninfo*)* @hidp_copy_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hidp_copy_session(%struct.hidp_session* %0, %struct.hidp_conninfo* %1) #0 {
  %3 = alloca %struct.hidp_session*, align 8
  %4 = alloca %struct.hidp_conninfo*, align 8
  %5 = alloca i32, align 4
  store %struct.hidp_session* %0, %struct.hidp_session** %3, align 8
  store %struct.hidp_conninfo* %1, %struct.hidp_conninfo** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %7 = call i32 @memset(%struct.hidp_conninfo* %6, i32 0, i32 28)
  %8 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %9 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %8, i32 0, i32 6
  %10 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %11 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %10, i32 0, i32 3
  %12 = call i32 @bacpy(i32* %9, i32* %11)
  %13 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %14 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %15, %16
  %18 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %19 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @BT_CONNECTED, align 4
  %21 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %22 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %24 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %23, i32 0, i32 2
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = icmp ne %struct.TYPE_5__* %25, null
  br i1 %26, label %27, label %74

27:                                               ; preds = %2
  %28 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %29 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %35 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %37 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %43 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %45 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %44, i32 0, i32 2
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %51 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %53 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %52, i32 0, i32 2
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %27
  %59 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %60 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %63 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %62, i32 0, i32 2
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  %67 = call i32 @strlcpy(i32 %61, i8* %66, i32 128)
  br label %73

68:                                               ; preds = %27
  %69 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %70 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @strlcpy(i32 %71, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 128)
  br label %73

73:                                               ; preds = %68, %58
  br label %111

74:                                               ; preds = %2
  %75 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %76 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = icmp ne %struct.TYPE_6__* %77, null
  br i1 %78, label %79, label %110

79:                                               ; preds = %74
  %80 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %81 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %80, i32 0, i32 1
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %86 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %85, i32 0, i32 4
  store i32 %84, i32* %86, align 4
  %87 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %88 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %87, i32 0, i32 1
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %93 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %95 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %94, i32 0, i32 1
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %100 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 4
  %101 = load %struct.hidp_conninfo*, %struct.hidp_conninfo** %4, align 8
  %102 = getelementptr inbounds %struct.hidp_conninfo, %struct.hidp_conninfo* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.hidp_session*, %struct.hidp_session** %3, align 8
  %105 = getelementptr inbounds %struct.hidp_session, %struct.hidp_session* %104, i32 0, i32 1
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i8*, i8** %107, align 8
  %109 = call i32 @strlcpy(i32 %103, i8* %108, i32 128)
  br label %110

110:                                              ; preds = %79, %74
  br label %111

111:                                              ; preds = %110, %73
  ret void
}

declare dso_local i32 @memset(%struct.hidp_conninfo*, i32, i32) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @strlcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
