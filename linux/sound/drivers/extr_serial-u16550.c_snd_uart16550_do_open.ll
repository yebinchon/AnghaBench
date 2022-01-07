; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_do_open.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/extr_serial-u16550.c_snd_uart16550_do_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_uart16550 = type { i32, i8, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64 }

@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@UART_FCR_TRIGGER_4 = common dso_local global i8 0, align 1
@UART_FCR = common dso_local global i64 0, align 8
@UART_IIR = common dso_local global i64 0, align 8
@UART_LCR = common dso_local global i64 0, align 8
@UART_LCR_DLAB = common dso_local global i8 0, align 1
@UART_DLL = common dso_local global i64 0, align 8
@UART_DLM = common dso_local global i64 0, align 8
@UART_LCR_WLEN8 = common dso_local global i8 0, align 1
@UART_MCR_RTS = common dso_local global i8 0, align 1
@UART_MCR_DTR = common dso_local global i8 0, align 1
@UART_MCR_OUT2 = common dso_local global i8 0, align 1
@UART_MCR = common dso_local global i64 0, align 8
@UART_IER_RDI = common dso_local global i8 0, align 1
@UART_IER_THRI = common dso_local global i8 0, align 1
@UART_IER_MSI = common dso_local global i8 0, align 1
@SNDRV_SERIAL_GENERIC = common dso_local global i32 0, align 4
@UART_IER = common dso_local global i64 0, align 8
@UART_LSR = common dso_local global i64 0, align 8
@UART_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_uart16550*)* @snd_uart16550_do_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_uart16550_do_open(%struct.snd_uart16550* %0) #0 {
  %2 = alloca %struct.snd_uart16550*, align 8
  %3 = alloca i8, align 1
  store %struct.snd_uart16550* %0, %struct.snd_uart16550** %2, align 8
  %4 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %5 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %4, i32 0, i32 12
  store i64 0, i64* %5, align 8
  %6 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %7 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %6, i32 0, i32 11
  store i64 0, i64* %7, align 8
  %8 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %9 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %8, i32 0, i32 10
  store i64 0, i64* %9, align 8
  %10 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %11 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %13 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %12, i32 0, i32 9
  store i64 0, i64* %13, align 8
  %14 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %15 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %14, i32 0, i32 8
  store i64 0, i64* %15, align 8
  %16 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %17 = sext i8 %16 to i32
  %18 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %19 = sext i8 %18 to i32
  %20 = or i32 %17, %19
  %21 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %22 = sext i8 %21 to i32
  %23 = or i32 %20, %22
  %24 = load i8, i8* @UART_FCR_TRIGGER_4, align 1
  %25 = sext i8 %24 to i32
  %26 = or i32 %23, %25
  %27 = trunc i32 %26 to i8
  %28 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %29 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %28, i32 0, i32 7
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UART_FCR, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outb(i8 signext %27, i64 %32)
  %34 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %35 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UART_IIR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @inb(i64 %38)
  %40 = and i32 %39, 240
  %41 = icmp eq i32 %40, 192
  br i1 %41, label %42, label %45

42:                                               ; preds = %1
  %43 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %44 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %43, i32 0, i32 0
  store i32 16, i32* %44, align 8
  br label %45

45:                                               ; preds = %42, %1
  %46 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %47 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %46, i32 0, i32 1
  %48 = load i8, i8* %47, align 4
  %49 = sext i8 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %98

51:                                               ; preds = %45
  %52 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %53 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %52, i32 0, i32 7
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @UART_LCR, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @inb(i64 %56)
  %58 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %59 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 8
  %60 = load i8, i8* @UART_LCR_DLAB, align 1
  %61 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %62 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %61, i32 0, i32 7
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @UART_LCR, align 8
  %65 = add nsw i64 %63, %64
  %66 = call i32 @outb(i8 signext %60, i64 %65)
  %67 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %68 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UART_DLL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @inb(i64 %71)
  %73 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %74 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 4
  %75 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %76 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %75, i32 0, i32 7
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @UART_DLM, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @inb(i64 %79)
  %81 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %82 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %81, i32 0, i32 4
  store i32 %80, i32* %82, align 8
  %83 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %84 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %83, i32 0, i32 1
  %85 = load i8, i8* %84, align 4
  %86 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %87 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %86, i32 0, i32 7
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @UART_DLL, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @outb(i8 signext %85, i64 %90)
  %92 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %93 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %92, i32 0, i32 7
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @UART_DLM, align 8
  %96 = add nsw i64 %94, %95
  %97 = call i32 @outb(i8 signext 0, i64 %96)
  br label %98

98:                                               ; preds = %51, %45
  %99 = load i8, i8* @UART_LCR_WLEN8, align 1
  %100 = sext i8 %99 to i32
  %101 = trunc i32 %100 to i8
  %102 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %103 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %102, i32 0, i32 7
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @UART_LCR, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @outb(i8 signext %101, i64 %106)
  %108 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %109 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  switch i32 %110, label %111 [
    i32 128, label %127
    i32 129, label %127
    i32 130, label %144
  ]

111:                                              ; preds = %98
  %112 = load i8, i8* @UART_MCR_RTS, align 1
  %113 = sext i8 %112 to i32
  %114 = load i8, i8* @UART_MCR_DTR, align 1
  %115 = sext i8 %114 to i32
  %116 = or i32 %113, %115
  %117 = load i8, i8* @UART_MCR_OUT2, align 1
  %118 = sext i8 %117 to i32
  %119 = or i32 %116, %118
  %120 = trunc i32 %119 to i8
  %121 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %122 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %121, i32 0, i32 7
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @UART_MCR, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @outb(i8 signext %120, i64 %125)
  br label %160

127:                                              ; preds = %98, %98
  %128 = load i8, i8* @UART_MCR_RTS, align 1
  %129 = sext i8 %128 to i32
  %130 = load i8, i8* @UART_MCR_DTR, align 1
  %131 = sext i8 %130 to i32
  %132 = and i32 0, %131
  %133 = or i32 %129, %132
  %134 = load i8, i8* @UART_MCR_OUT2, align 1
  %135 = sext i8 %134 to i32
  %136 = or i32 %133, %135
  %137 = trunc i32 %136 to i8
  %138 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %139 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %138, i32 0, i32 7
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @UART_MCR, align 8
  %142 = add nsw i64 %140, %141
  %143 = call i32 @outb(i8 signext %137, i64 %142)
  br label %160

144:                                              ; preds = %98
  %145 = load i8, i8* @UART_MCR_RTS, align 1
  %146 = sext i8 %145 to i32
  %147 = load i8, i8* @UART_MCR_DTR, align 1
  %148 = sext i8 %147 to i32
  %149 = or i32 %146, %148
  %150 = load i8, i8* @UART_MCR_OUT2, align 1
  %151 = sext i8 %150 to i32
  %152 = or i32 %149, %151
  %153 = trunc i32 %152 to i8
  %154 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %155 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %154, i32 0, i32 7
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @UART_MCR, align 8
  %158 = add nsw i64 %156, %157
  %159 = call i32 @outb(i8 signext %153, i64 %158)
  br label %160

160:                                              ; preds = %144, %127, %111
  %161 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %162 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %161, i32 0, i32 6
  %163 = load i64, i64* %162, align 8
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %174

165:                                              ; preds = %160
  %166 = load i8, i8* @UART_IER_RDI, align 1
  %167 = sext i8 %166 to i32
  %168 = and i32 0, %167
  %169 = load i8, i8* @UART_IER_THRI, align 1
  %170 = sext i8 %169 to i32
  %171 = and i32 0, %170
  %172 = or i32 %168, %171
  %173 = trunc i32 %172 to i8
  store i8 %173, i8* %3, align 1
  br label %211

174:                                              ; preds = %160
  %175 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %176 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = icmp eq i32 %177, 128
  br i1 %178, label %179, label %186

179:                                              ; preds = %174
  %180 = load i8, i8* @UART_IER_RDI, align 1
  %181 = sext i8 %180 to i32
  %182 = load i8, i8* @UART_IER_MSI, align 1
  %183 = sext i8 %182 to i32
  %184 = or i32 %181, %183
  %185 = trunc i32 %184 to i8
  store i8 %185, i8* %3, align 1
  br label %210

186:                                              ; preds = %174
  %187 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %188 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %187, i32 0, i32 5
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @SNDRV_SERIAL_GENERIC, align 4
  %191 = icmp eq i32 %189, %190
  br i1 %191, label %192, label %202

192:                                              ; preds = %186
  %193 = load i8, i8* @UART_IER_RDI, align 1
  %194 = sext i8 %193 to i32
  %195 = load i8, i8* @UART_IER_MSI, align 1
  %196 = sext i8 %195 to i32
  %197 = or i32 %194, %196
  %198 = load i8, i8* @UART_IER_THRI, align 1
  %199 = sext i8 %198 to i32
  %200 = or i32 %197, %199
  %201 = trunc i32 %200 to i8
  store i8 %201, i8* %3, align 1
  br label %209

202:                                              ; preds = %186
  %203 = load i8, i8* @UART_IER_RDI, align 1
  %204 = sext i8 %203 to i32
  %205 = load i8, i8* @UART_IER_THRI, align 1
  %206 = sext i8 %205 to i32
  %207 = or i32 %204, %206
  %208 = trunc i32 %207 to i8
  store i8 %208, i8* %3, align 1
  br label %209

209:                                              ; preds = %202, %192
  br label %210

210:                                              ; preds = %209, %179
  br label %211

211:                                              ; preds = %210, %165
  %212 = load i8, i8* %3, align 1
  %213 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %214 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %213, i32 0, i32 7
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @UART_IER, align 8
  %217 = add nsw i64 %215, %216
  %218 = call i32 @outb(i8 signext %212, i64 %217)
  %219 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %220 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %219, i32 0, i32 7
  %221 = load i64, i64* %220, align 8
  %222 = load i64, i64* @UART_LSR, align 8
  %223 = add nsw i64 %221, %222
  %224 = call i32 @inb(i64 %223)
  %225 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %226 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %225, i32 0, i32 7
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @UART_IIR, align 8
  %229 = add nsw i64 %227, %228
  %230 = call i32 @inb(i64 %229)
  %231 = load %struct.snd_uart16550*, %struct.snd_uart16550** %2, align 8
  %232 = getelementptr inbounds %struct.snd_uart16550, %struct.snd_uart16550* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @UART_RX, align 8
  %235 = add nsw i64 %233, %234
  %236 = call i32 @inb(i64 %235)
  ret void
}

declare dso_local i32 @outb(i8 signext, i64) #1

declare dso_local i32 @inb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
