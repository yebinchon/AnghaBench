; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_read_midi.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_portman2x4.c_portman_read_midi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.portman = type { i32 }

@INT_EN = common dso_local global i32 0, align 4
@ESTB = common dso_local global i32 0, align 4
@RXAVAIL = common dso_local global i32 0, align 4
@STROBE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.portman*, i32)* @portman_read_midi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @portman_read_midi(%struct.portman* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.portman*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.portman* %0, %struct.portman** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8 0, i8* %6, align 1
  %8 = load %struct.portman*, %struct.portman** %4, align 8
  %9 = call i32 @portman_write_data(%struct.portman* %8, i32 0)
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 1
  %12 = load i32, i32* @INT_EN, align 4
  %13 = or i32 %11, %12
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %7, align 1
  %15 = load %struct.portman*, %struct.portman** %4, align 8
  %16 = load i8, i8* %7, align 1
  %17 = call i32 @portman_write_command(%struct.portman* %15, i8 zeroext %16)
  br label %18

18:                                               ; preds = %25, %2
  %19 = load %struct.portman*, %struct.portman** %4, align 8
  %20 = call i32 @portman_read_status(%struct.portman* %19)
  %21 = load i32, i32* @ESTB, align 4
  %22 = and i32 %20, %21
  %23 = load i32, i32* @ESTB, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = call i32 (...) @cpu_relax()
  br label %18

27:                                               ; preds = %18
  %28 = load %struct.portman*, %struct.portman** %4, align 8
  %29 = call i32 @portman_read_status(%struct.portman* %28)
  %30 = load i32, i32* @RXAVAIL, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %3, align 4
  br label %160

34:                                               ; preds = %27
  %35 = load %struct.portman*, %struct.portman** %4, align 8
  %36 = load i8, i8* %7, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @STROBE, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  %42 = call i32 @portman_write_command(%struct.portman* %35, i8 zeroext %41)
  br label %43

43:                                               ; preds = %49, %34
  %44 = load %struct.portman*, %struct.portman** %4, align 8
  %45 = call i32 @portman_read_status(%struct.portman* %44)
  %46 = load i32, i32* @ESTB, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = call i32 (...) @cpu_relax()
  br label %43

51:                                               ; preds = %43
  %52 = load %struct.portman*, %struct.portman** %4, align 8
  %53 = call i32 @portman_read_status(%struct.portman* %52)
  %54 = and i32 %53, 128
  %55 = trunc i32 %54 to i8
  store i8 %55, i8* %6, align 1
  %56 = load %struct.portman*, %struct.portman** %4, align 8
  %57 = call i32 @portman_write_data(%struct.portman* %56, i32 1)
  %58 = load %struct.portman*, %struct.portman** %4, align 8
  %59 = call i32 @portman_write_data(%struct.portman* %58, i32 0)
  %60 = load %struct.portman*, %struct.portman** %4, align 8
  %61 = call i32 @portman_read_status(%struct.portman* %60)
  %62 = ashr i32 %61, 1
  %63 = and i32 %62, 64
  %64 = load i8, i8* %6, align 1
  %65 = zext i8 %64 to i32
  %66 = or i32 %65, %63
  %67 = trunc i32 %66 to i8
  store i8 %67, i8* %6, align 1
  %68 = load %struct.portman*, %struct.portman** %4, align 8
  %69 = call i32 @portman_write_data(%struct.portman* %68, i32 1)
  %70 = load %struct.portman*, %struct.portman** %4, align 8
  %71 = call i32 @portman_write_data(%struct.portman* %70, i32 0)
  %72 = load %struct.portman*, %struct.portman** %4, align 8
  %73 = call i32 @portman_read_status(%struct.portman* %72)
  %74 = ashr i32 %73, 2
  %75 = and i32 %74, 32
  %76 = load i8, i8* %6, align 1
  %77 = zext i8 %76 to i32
  %78 = or i32 %77, %75
  %79 = trunc i32 %78 to i8
  store i8 %79, i8* %6, align 1
  %80 = load %struct.portman*, %struct.portman** %4, align 8
  %81 = call i32 @portman_write_data(%struct.portman* %80, i32 1)
  %82 = load %struct.portman*, %struct.portman** %4, align 8
  %83 = call i32 @portman_write_data(%struct.portman* %82, i32 0)
  %84 = load %struct.portman*, %struct.portman** %4, align 8
  %85 = call i32 @portman_read_status(%struct.portman* %84)
  %86 = ashr i32 %85, 3
  %87 = and i32 %86, 16
  %88 = load i8, i8* %6, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %6, align 1
  %92 = load %struct.portman*, %struct.portman** %4, align 8
  %93 = call i32 @portman_write_data(%struct.portman* %92, i32 1)
  %94 = load %struct.portman*, %struct.portman** %4, align 8
  %95 = call i32 @portman_write_data(%struct.portman* %94, i32 0)
  %96 = load %struct.portman*, %struct.portman** %4, align 8
  %97 = call i32 @portman_read_status(%struct.portman* %96)
  %98 = ashr i32 %97, 4
  %99 = and i32 %98, 8
  %100 = load i8, i8* %6, align 1
  %101 = zext i8 %100 to i32
  %102 = or i32 %101, %99
  %103 = trunc i32 %102 to i8
  store i8 %103, i8* %6, align 1
  %104 = load %struct.portman*, %struct.portman** %4, align 8
  %105 = call i32 @portman_write_data(%struct.portman* %104, i32 1)
  %106 = load %struct.portman*, %struct.portman** %4, align 8
  %107 = call i32 @portman_write_data(%struct.portman* %106, i32 0)
  %108 = load %struct.portman*, %struct.portman** %4, align 8
  %109 = call i32 @portman_read_status(%struct.portman* %108)
  %110 = ashr i32 %109, 5
  %111 = and i32 %110, 4
  %112 = load i8, i8* %6, align 1
  %113 = zext i8 %112 to i32
  %114 = or i32 %113, %111
  %115 = trunc i32 %114 to i8
  store i8 %115, i8* %6, align 1
  %116 = load %struct.portman*, %struct.portman** %4, align 8
  %117 = call i32 @portman_write_data(%struct.portman* %116, i32 1)
  %118 = load %struct.portman*, %struct.portman** %4, align 8
  %119 = call i32 @portman_write_data(%struct.portman* %118, i32 0)
  %120 = load %struct.portman*, %struct.portman** %4, align 8
  %121 = call i32 @portman_read_status(%struct.portman* %120)
  %122 = ashr i32 %121, 6
  %123 = and i32 %122, 2
  %124 = load i8, i8* %6, align 1
  %125 = zext i8 %124 to i32
  %126 = or i32 %125, %123
  %127 = trunc i32 %126 to i8
  store i8 %127, i8* %6, align 1
  %128 = load %struct.portman*, %struct.portman** %4, align 8
  %129 = call i32 @portman_write_data(%struct.portman* %128, i32 1)
  %130 = load %struct.portman*, %struct.portman** %4, align 8
  %131 = call i32 @portman_write_data(%struct.portman* %130, i32 0)
  %132 = load %struct.portman*, %struct.portman** %4, align 8
  %133 = call i32 @portman_read_status(%struct.portman* %132)
  %134 = ashr i32 %133, 7
  %135 = and i32 %134, 1
  %136 = load i8, i8* %6, align 1
  %137 = zext i8 %136 to i32
  %138 = or i32 %137, %135
  %139 = trunc i32 %138 to i8
  store i8 %139, i8* %6, align 1
  %140 = load %struct.portman*, %struct.portman** %4, align 8
  %141 = call i32 @portman_write_data(%struct.portman* %140, i32 1)
  %142 = load %struct.portman*, %struct.portman** %4, align 8
  %143 = call i32 @portman_write_data(%struct.portman* %142, i32 0)
  %144 = load %struct.portman*, %struct.portman** %4, align 8
  %145 = load i8, i8* %7, align 1
  %146 = call i32 @portman_write_command(%struct.portman* %144, i8 zeroext %145)
  br label %147

147:                                              ; preds = %154, %51
  %148 = load %struct.portman*, %struct.portman** %4, align 8
  %149 = call i32 @portman_read_status(%struct.portman* %148)
  %150 = load i32, i32* @ESTB, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @ESTB, align 4
  %153 = icmp eq i32 %151, %152
  br i1 %153, label %154, label %156

154:                                              ; preds = %147
  %155 = call i32 (...) @cpu_relax()
  br label %147

156:                                              ; preds = %147
  %157 = load i8, i8* %6, align 1
  %158 = zext i8 %157 to i32
  %159 = and i32 %158, 255
  store i32 %159, i32* %3, align 4
  br label %160

160:                                              ; preds = %156, %33
  %161 = load i32, i32* %3, align 4
  ret i32 %161
}

declare dso_local i32 @portman_write_data(%struct.portman*, i32) #1

declare dso_local i32 @portman_write_command(%struct.portman*, i8 zeroext) #1

declare dso_local i32 @portman_read_status(%struct.portman*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
