; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_reset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_ac97_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@PCI_SUBSYSTEM_VENDOR_ID = common dso_local global i32 0, align 4
@NEC_VERSA_SUBID1 = common dso_local global i32 0, align 4
@NEC_VERSA_SUBID2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*)* @snd_es1968_ac97_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_ac97_reset(%struct.es1968* %0) #0 {
  %2 = alloca %struct.es1968*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store %struct.es1968* %0, %struct.es1968** %2, align 8
  %8 = load %struct.es1968*, %struct.es1968** %2, align 8
  %9 = getelementptr inbounds %struct.es1968, %struct.es1968* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = add i64 %11, 54
  %13 = call i32 @inw(i64 %12)
  %14 = trunc i32 %13 to i16
  store i16 %14, i16* %4, align 2
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 58
  %17 = call i32 @inw(i64 %16)
  %18 = and i32 %17, 65532
  %19 = trunc i32 %18 to i16
  %20 = load i64, i64* %3, align 8
  %21 = add i64 %20, 58
  %22 = call i32 @outw(i16 zeroext %19, i64 %21)
  %23 = load i64, i64* %3, align 8
  %24 = add i64 %23, 60
  %25 = call i32 @inw(i64 %24)
  %26 = and i32 %25, 65532
  %27 = trunc i32 %26 to i16
  %28 = load i64, i64* %3, align 8
  %29 = add i64 %28, 60
  %30 = call i32 @outw(i16 zeroext %27, i64 %29)
  %31 = load i64, i64* %3, align 8
  %32 = add i64 %31, 54
  %33 = call i32 @outw(i16 zeroext 0, i64 %32)
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 104
  %36 = call i32 @inw(i64 %35)
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %5, align 2
  %38 = load %struct.es1968*, %struct.es1968** %2, align 8
  %39 = getelementptr inbounds %struct.es1968, %struct.es1968* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @pci_read_config_word(i32 %40, i32 88, i16* %6)
  %42 = load %struct.es1968*, %struct.es1968** %2, align 8
  %43 = getelementptr inbounds %struct.es1968, %struct.es1968* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PCI_SUBSYSTEM_VENDOR_ID, align 4
  %46 = call i32 @pci_read_config_dword(i32 %44, i32 %45, i32* %7)
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = and i32 %48, 1
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %1
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = or i32 %53, 16
  %55 = trunc i32 %54 to i16
  store i16 %55, i16* %5, align 2
  br label %56

56:                                               ; preds = %51, %1
  %57 = load i64, i64* %3, align 8
  %58 = add i64 %57, 100
  %59 = call i32 @outw(i16 zeroext -2, i64 %58)
  %60 = load i64, i64* %3, align 8
  %61 = add i64 %60, 104
  %62 = call i32 @outw(i16 zeroext 1, i64 %61)
  %63 = load i64, i64* %3, align 8
  %64 = add i64 %63, 96
  %65 = call i32 @outw(i16 zeroext 0, i64 %64)
  %66 = call i32 @udelay(i32 20)
  %67 = load i64, i64* %3, align 8
  %68 = add i64 %67, 96
  %69 = call i32 @outw(i16 zeroext 1, i64 %68)
  %70 = call i32 @msleep(i32 20)
  %71 = load i16, i16* %5, align 2
  %72 = zext i16 %71 to i32
  %73 = or i32 %72, 1
  %74 = trunc i32 %73 to i16
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, 104
  %77 = call i32 @outw(i16 zeroext %74, i64 %76)
  %78 = load i64, i64* %3, align 8
  %79 = add i64 %78, 56
  %80 = call i32 @inw(i64 %79)
  %81 = and i32 %80, 65532
  %82 = or i32 %81, 1
  %83 = trunc i32 %82 to i16
  %84 = load i64, i64* %3, align 8
  %85 = add i64 %84, 56
  %86 = call i32 @outw(i16 zeroext %83, i64 %85)
  %87 = load i64, i64* %3, align 8
  %88 = add i64 %87, 58
  %89 = call i32 @inw(i64 %88)
  %90 = and i32 %89, 65532
  %91 = or i32 %90, 1
  %92 = trunc i32 %91 to i16
  %93 = load i64, i64* %3, align 8
  %94 = add i64 %93, 58
  %95 = call i32 @outw(i16 zeroext %92, i64 %94)
  %96 = load i64, i64* %3, align 8
  %97 = add i64 %96, 60
  %98 = call i32 @inw(i64 %97)
  %99 = and i32 %98, 65532
  %100 = or i32 %99, 1
  %101 = trunc i32 %100 to i16
  %102 = load i64, i64* %3, align 8
  %103 = add i64 %102, 60
  %104 = call i32 @outw(i16 zeroext %101, i64 %103)
  %105 = load i64, i64* %3, align 8
  %106 = add i64 %105, 54
  %107 = call i32 @outw(i16 zeroext 0, i64 %106)
  %108 = load i64, i64* %3, align 8
  %109 = add i64 %108, 100
  %110 = call i32 @outw(i16 zeroext -9, i64 %109)
  %111 = load i64, i64* %3, align 8
  %112 = add i64 %111, 104
  %113 = call i32 @inw(i64 %112)
  %114 = trunc i32 %113 to i16
  store i16 %114, i16* %5, align 2
  %115 = load i64, i64* %3, align 8
  %116 = add i64 %115, 104
  %117 = call i32 @outw(i16 zeroext 9, i64 %116)
  %118 = load i64, i64* %3, align 8
  %119 = add i64 %118, 96
  %120 = call i32 @outw(i16 zeroext 1, i64 %119)
  %121 = call i32 @udelay(i32 20)
  %122 = load i64, i64* %3, align 8
  %123 = add i64 %122, 96
  %124 = call i32 @outw(i16 zeroext 9, i64 %123)
  %125 = call i32 @msleep(i32 500)
  %126 = load i64, i64* %3, align 8
  %127 = add i64 %126, 58
  %128 = call i32 @inw(i64 %127)
  %129 = and i32 %128, 65532
  %130 = trunc i32 %129 to i16
  %131 = load i64, i64* %3, align 8
  %132 = add i64 %131, 58
  %133 = call i32 @outw(i16 zeroext %130, i64 %132)
  %134 = load i64, i64* %3, align 8
  %135 = add i64 %134, 60
  %136 = call i32 @inw(i64 %135)
  %137 = and i32 %136, 65532
  %138 = trunc i32 %137 to i16
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 60
  %141 = call i32 @outw(i16 zeroext %138, i64 %140)
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @NEC_VERSA_SUBID1, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %56
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @NEC_VERSA_SUBID2, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %164

149:                                              ; preds = %145, %56
  %150 = load i64, i64* %3, align 8
  %151 = add i64 %150, 100
  %152 = call i32 @outw(i16 zeroext -1537, i64 %151)
  %153 = load i64, i64* %3, align 8
  %154 = add i64 %153, 104
  %155 = call i32 @inw(i64 %154)
  %156 = or i32 %155, 1536
  %157 = trunc i32 %156 to i16
  %158 = load i64, i64* %3, align 8
  %159 = add i64 %158, 104
  %160 = call i32 @outw(i16 zeroext %157, i64 %159)
  %161 = load i64, i64* %3, align 8
  %162 = add i64 %161, 96
  %163 = call i32 @outw(i16 zeroext 521, i64 %162)
  br label %164

164:                                              ; preds = %149, %145
  %165 = load i16, i16* %4, align 2
  %166 = load i64, i64* %3, align 8
  %167 = add i64 %166, 54
  %168 = call i32 @outw(i16 zeroext %165, i64 %167)
  %169 = load i64, i64* %3, align 8
  %170 = add i64 %169, 192
  %171 = call i32 @inb(i64 %170)
  %172 = or i32 %171, 32
  %173 = load i64, i64* %3, align 8
  %174 = add i64 %173, 192
  %175 = call i32 @outb(i32 %172, i64 %174)
  %176 = load i64, i64* %3, align 8
  %177 = add i64 %176, 195
  %178 = call i32 @outb(i32 255, i64 %177)
  %179 = load i64, i64* %3, align 8
  %180 = add i64 %179, 196
  %181 = call i32 @outb(i32 255, i64 %180)
  %182 = load i64, i64* %3, align 8
  %183 = add i64 %182, 198
  %184 = call i32 @outb(i32 255, i64 %183)
  %185 = load i64, i64* %3, align 8
  %186 = add i64 %185, 200
  %187 = call i32 @outb(i32 255, i64 %186)
  %188 = load i64, i64* %3, align 8
  %189 = add i64 %188, 207
  %190 = call i32 @outb(i32 63, i64 %189)
  %191 = load i64, i64* %3, align 8
  %192 = add i64 %191, 208
  %193 = call i32 @outb(i32 63, i64 %192)
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i16*) #1

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
