; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_perms_accum.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_lib.c_aa_perms_accum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aa_perms = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aa_perms_accum(%struct.aa_perms* %0, %struct.aa_perms* %1) #0 {
  %3 = alloca %struct.aa_perms*, align 8
  %4 = alloca %struct.aa_perms*, align 8
  store %struct.aa_perms* %0, %struct.aa_perms** %3, align 8
  store %struct.aa_perms* %1, %struct.aa_perms** %4, align 8
  %5 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %6 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %9 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %13 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %16 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %14, %18
  %20 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %21 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %25 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %28 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %26, %29
  %31 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %32 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 4
  %35 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %36 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %39 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %37, %41
  %43 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %44 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %48 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %51 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %56 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %60 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %63 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = xor i32 %64, -1
  %66 = and i32 %61, %65
  %67 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %68 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %72 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %75 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %73, %77
  %79 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %80 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, -1
  %83 = and i32 %78, %82
  %84 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %85 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %84, i32 0, i32 6
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %89 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %92 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %90, %94
  %96 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %97 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %95, %99
  %101 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %102 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %101, i32 0, i32 7
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %100
  store i32 %104, i32* %102, align 4
  %105 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %106 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %105, i32 0, i32 8
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %109 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = xor i32 %110, -1
  %112 = and i32 %107, %111
  %113 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %114 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %113, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, %112
  store i32 %116, i32* %114, align 4
  %117 = load %struct.aa_perms*, %struct.aa_perms** %4, align 8
  %118 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %121 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = xor i32 %122, -1
  %124 = and i32 %119, %123
  %125 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %126 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = xor i32 %127, -1
  %129 = and i32 %124, %128
  %130 = load %struct.aa_perms*, %struct.aa_perms** %3, align 8
  %131 = getelementptr inbounds %struct.aa_perms, %struct.aa_perms* %130, i32 0, i32 9
  %132 = load i32, i32* %131, align 4
  %133 = or i32 %132, %129
  store i32 %133, i32* %131, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
