; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auth_cred = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32* }
%struct.rpc_cred = type { %struct.TYPE_4__* }

@UNX_NGROUPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.auth_cred*, %struct.rpc_cred*, i32)* @unx_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unx_match(%struct.auth_cred* %0, %struct.rpc_cred* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.auth_cred*, align 8
  %6 = alloca %struct.rpc_cred*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.auth_cred* %0, %struct.auth_cred** %5, align 8
  store %struct.rpc_cred* %1, %struct.rpc_cred** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %11 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %14 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = icmp eq %struct.TYPE_4__* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %124

18:                                               ; preds = %3
  %19 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %20 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %25 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @uid_eq(i32 %23, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %44

31:                                               ; preds = %18
  %32 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %33 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %38 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @gid_eq(i32 %36, i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %31, %18
  store i32 0, i32* %4, align 4
  br label %124

45:                                               ; preds = %31
  %46 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %47 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %46, i32 0, i32 0
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = icmp ne %struct.TYPE_3__* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %54 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %52, %45
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @UNX_NGROUPS, align 4
  %63 = icmp ugt i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %60
  %65 = load i32, i32* @UNX_NGROUPS, align 4
  store i32 %65, i32* %8, align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %68 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = icmp eq %struct.TYPE_3__* %71, null
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load i32, i32* %8, align 4
  %75 = icmp eq i32 %74, 0
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %4, align 4
  br label %124

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %80 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %78, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %4, align 4
  br label %124

88:                                               ; preds = %77
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %120, %88
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* %8, align 4
  %92 = icmp ult i32 %90, %91
  br i1 %92, label %93, label %123

93:                                               ; preds = %89
  %94 = load %struct.rpc_cred*, %struct.rpc_cred** %6, align 8
  %95 = getelementptr inbounds %struct.rpc_cred, %struct.rpc_cred* %94, i32 0, i32 0
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.auth_cred*, %struct.auth_cred** %5, align 8
  %106 = getelementptr inbounds %struct.auth_cred, %struct.auth_cred* %105, i32 0, i32 0
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %111, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @gid_eq(i32 %104, i32 %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %93
  store i32 0, i32* %4, align 4
  br label %124

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %9, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %9, align 4
  br label %89

123:                                              ; preds = %89
  store i32 1, i32* %4, align 4
  br label %124

124:                                              ; preds = %123, %118, %87, %73, %44, %17
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @uid_eq(i32, i32) #1

declare dso_local i32 @gid_eq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
