; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_rateinfo_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_hashlimit.c_rateinfo_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsthash_ent = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i8*, i32, i64, i64, i32 }
%struct.xt_hashlimit_htable = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@XT_HASHLIMIT_RATE_MATCH = common dso_local global i32 0, align 4
@XT_HASHLIMIT_BYTES = common dso_local global i32 0, align 4
@CREDITS_PER_JIFFY_BYTES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dsthash_ent*, %struct.xt_hashlimit_htable*, i32)* @rateinfo_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rateinfo_init(%struct.dsthash_ent* %0, %struct.xt_hashlimit_htable* %1, i32 %2) #0 {
  %4 = alloca %struct.dsthash_ent*, align 8
  %5 = alloca %struct.xt_hashlimit_htable*, align 8
  %6 = alloca i32, align 4
  store %struct.dsthash_ent* %0, %struct.dsthash_ent** %4, align 8
  store %struct.xt_hashlimit_htable* %1, %struct.xt_hashlimit_htable** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @jiffies, align 4
  %8 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %9 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 8
  store i32 %7, i32* %10, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp sge i32 %11, 3
  br i1 %12, label %13, label %100

13:                                               ; preds = %3
  %14 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %15 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XT_HASHLIMIT_RATE_MATCH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %100

21:                                               ; preds = %13
  %22 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %23 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 7
  store i64 0, i64* %24, align 8
  %25 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %26 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 6
  store i64 0, i64* %27, align 8
  %28 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %29 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %71

35:                                               ; preds = %21
  %36 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %37 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @user2rate_bytes(i32 %39)
  %41 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %42 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %45 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %35
  %50 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %51 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %55 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = mul nsw i32 %53, %57
  %59 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %60 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  store i32 %58, i32* %61, align 4
  br label %70

62:                                               ; preds = %35
  %63 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %64 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %68 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %62, %49
  br label %92

71:                                               ; preds = %21
  %72 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %73 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @user2rate(i32 %75)
  %77 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %78 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 8
  %80 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %81 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %85 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %83, %87
  %89 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %90 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  br label %92

92:                                               ; preds = %71, %70
  %93 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %94 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %98 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 8
  br label %163

100:                                              ; preds = %13, %3
  %101 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %102 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @XT_HASHLIMIT_BYTES, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %130

108:                                              ; preds = %100
  %109 = load i32, i32* @CREDITS_PER_JIFFY_BYTES, align 4
  %110 = load i32, i32* @HZ, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %113 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 2
  store i32 %111, i32* %114, align 8
  %115 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %116 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i8* @user2credits_byte(i32 %118)
  %120 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %121 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 4
  store i8* %119, i8** %122, align 8
  %123 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %124 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %128 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 3
  store i32 %126, i32* %129, align 4
  br label %162

130:                                              ; preds = %100
  %131 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %132 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %136 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = mul nsw i32 %134, %138
  %140 = load i32, i32* %6, align 4
  %141 = call i8* @user2credits(i32 %139, i32 %140)
  %142 = ptrtoint i8* %141 to i32
  %143 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %144 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 2
  store i32 %142, i32* %145, align 8
  %146 = load %struct.xt_hashlimit_htable*, %struct.xt_hashlimit_htable** %5, align 8
  %147 = getelementptr inbounds %struct.xt_hashlimit_htable, %struct.xt_hashlimit_htable* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* %6, align 4
  %151 = call i8* @user2credits(i32 %149, i32 %150)
  %152 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %153 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 4
  store i8* %151, i8** %154, align 8
  %155 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %156 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.dsthash_ent*, %struct.dsthash_ent** %4, align 8
  %160 = getelementptr inbounds %struct.dsthash_ent, %struct.dsthash_ent* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 3
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %130, %108
  br label %163

163:                                              ; preds = %162, %92
  ret void
}

declare dso_local i32 @user2rate_bytes(i32) #1

declare dso_local i32 @user2rate(i32) #1

declare dso_local i8* @user2credits_byte(i32) #1

declare dso_local i8* @user2credits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
