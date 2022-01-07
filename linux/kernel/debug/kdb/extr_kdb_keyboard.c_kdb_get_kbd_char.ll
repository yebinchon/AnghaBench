; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_keyboard.c_kdb_get_kbd_char.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_keyboard.c_kdb_get_kbd_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_get_kbd_char.shift_lock = internal global i32 0, align 4
@kdb_get_kbd_char.shift_key = internal global i32 0, align 4
@kdb_get_kbd_char.ctrl_key = internal global i32 0, align 4
@NO_I8042 = common dso_local global i32 0, align 4
@NO_VT_CONSOLE = common dso_local global i32 0, align 4
@KBD_STATUS_REG = common dso_local global i32 0, align 4
@KBD_DATA_REG = common dso_local global i32 0, align 4
@kbd_exists = common dso_local global i32 0, align 4
@KBD_STAT_OBF = common dso_local global i32 0, align 4
@KBD_STAT_MOUSE_OBF = common dso_local global i32 0, align 4
@kbd_last_ret = common dso_local global i32 0, align 4
@plain_map = common dso_local global i32* null, align 8
@key_maps = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [29 x i8] c"Unknown state/scancode (%d)\0A\00", align 1
@K_ENTER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdb_get_kbd_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = load i32, i32* @NO_I8042, align 4
  %6 = call i64 @KDB_FLAG(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %0
  %9 = load i32, i32* @NO_VT_CONSOLE, align 4
  %10 = call i64 @KDB_FLAG(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @KBD_STATUS_REG, align 4
  %14 = call i32 @inb(i32 %13)
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %21

16:                                               ; preds = %12
  %17 = load i32, i32* @KBD_DATA_REG, align 4
  %18 = call i32 @inb(i32 %17)
  %19 = icmp eq i32 %18, 255
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %8, %0
  store i32 0, i32* @kbd_exists, align 4
  store i32 -1, i32* %1, align 4
  br label %192

21:                                               ; preds = %16, %12
  store i32 1, i32* @kbd_exists, align 4
  %22 = load i32, i32* @KBD_STATUS_REG, align 4
  %23 = call i32 @inb(i32 %22)
  %24 = load i32, i32* @KBD_STAT_OBF, align 4
  %25 = and i32 %23, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store i32 -1, i32* %1, align 4
  br label %192

28:                                               ; preds = %21
  %29 = load i32, i32* @KBD_DATA_REG, align 4
  %30 = call i32 @inb(i32 %29)
  store i32 %30, i32* %2, align 4
  %31 = load i32, i32* @KBD_STATUS_REG, align 4
  %32 = call i32 @inb(i32 %31)
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @KBD_STAT_MOUSE_OBF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 -1, i32* %1, align 4
  br label %192

38:                                               ; preds = %28
  %39 = load i32, i32* %2, align 4
  %40 = and i32 %39, 127
  %41 = icmp eq i32 %40, 42
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 127
  %45 = icmp eq i32 %44, 54
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %38
  %47 = load i32, i32* %2, align 4
  %48 = and i32 %47, 128
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  store i32 1, i32* @kdb_get_kbd_char.shift_key, align 4
  br label %52

51:                                               ; preds = %46
  store i32 0, i32* @kdb_get_kbd_char.shift_key, align 4
  br label %52

52:                                               ; preds = %51, %50
  store i32 -1, i32* %1, align 4
  br label %192

53:                                               ; preds = %42
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 127
  %56 = icmp eq i32 %55, 29
  br i1 %56, label %57, label %64

57:                                               ; preds = %53
  %58 = load i32, i32* %2, align 4
  %59 = and i32 %58, 128
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 1, i32* @kdb_get_kbd_char.ctrl_key, align 4
  br label %63

62:                                               ; preds = %57
  store i32 0, i32* @kdb_get_kbd_char.ctrl_key, align 4
  br label %63

63:                                               ; preds = %62, %61
  store i32 -1, i32* %1, align 4
  br label %192

64:                                               ; preds = %53
  %65 = load i32, i32* %2, align 4
  %66 = and i32 %65, 128
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %64
  %69 = load i32, i32* %2, align 4
  %70 = icmp eq i32 %69, 156
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  store i32 0, i32* @kbd_last_ret, align 4
  br label %72

72:                                               ; preds = %71, %68
  store i32 -1, i32* %1, align 4
  br label %192

73:                                               ; preds = %64
  %74 = load i32, i32* %2, align 4
  %75 = and i32 %74, 127
  store i32 %75, i32* %2, align 4
  %76 = load i32, i32* %2, align 4
  %77 = icmp eq i32 %76, 58
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @kdb_get_kbd_char.shift_lock, align 4
  %80 = xor i32 %79, 1
  store i32 %80, i32* @kdb_get_kbd_char.shift_lock, align 4
  store i32 -1, i32* %1, align 4
  br label %192

81:                                               ; preds = %73
  %82 = load i32, i32* %2, align 4
  %83 = icmp eq i32 %82, 14
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 8, i32* %1, align 4
  br label %192

85:                                               ; preds = %81
  %86 = load i32, i32* %2, align 4
  switch i32 %86, label %95 [
    i32 15, label %87
    i32 83, label %88
    i32 71, label %89
    i32 79, label %90
    i32 75, label %91
    i32 72, label %92
    i32 80, label %93
    i32 77, label %94
  ]

87:                                               ; preds = %85
  store i32 9, i32* %1, align 4
  br label %192

88:                                               ; preds = %85
  store i32 4, i32* %1, align 4
  br label %192

89:                                               ; preds = %85
  store i32 1, i32* %1, align 4
  br label %192

90:                                               ; preds = %85
  store i32 5, i32* %1, align 4
  br label %192

91:                                               ; preds = %85
  store i32 2, i32* %1, align 4
  br label %192

92:                                               ; preds = %85
  store i32 16, i32* %1, align 4
  br label %192

93:                                               ; preds = %85
  store i32 14, i32* %1, align 4
  br label %192

94:                                               ; preds = %85
  store i32 6, i32* %1, align 4
  br label %192

95:                                               ; preds = %85
  %96 = load i32, i32* %2, align 4
  %97 = icmp eq i32 %96, 224
  br i1 %97, label %98, label %99

98:                                               ; preds = %95
  store i32 -1, i32* %1, align 4
  br label %192

99:                                               ; preds = %95
  %100 = load i32, i32* %2, align 4
  %101 = icmp eq i32 %100, 115
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  store i32 89, i32* %2, align 4
  br label %108

103:                                              ; preds = %99
  %104 = load i32, i32* %2, align 4
  %105 = icmp eq i32 %104, 125
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i32 124, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %103
  br label %108

108:                                              ; preds = %107, %102
  %109 = load i32, i32* @kdb_get_kbd_char.shift_lock, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %123, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* @kdb_get_kbd_char.shift_key, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %123, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* @kdb_get_kbd_char.ctrl_key, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %123, label %117

117:                                              ; preds = %114
  %118 = load i32*, i32** @plain_map, align 8
  %119 = load i32, i32* %2, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %4, align 4
  br label %163

123:                                              ; preds = %114, %111, %108
  %124 = load i32, i32* @kdb_get_kbd_char.shift_lock, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %129, label %126

126:                                              ; preds = %123
  %127 = load i32, i32* @kdb_get_kbd_char.shift_key, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %126, %123
  %130 = load i32**, i32*** @key_maps, align 8
  %131 = getelementptr inbounds i32*, i32** %130, i64 1
  %132 = load i32*, i32** %131, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %142

134:                                              ; preds = %129
  %135 = load i32**, i32*** @key_maps, align 8
  %136 = getelementptr inbounds i32*, i32** %135, i64 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %2, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %4, align 4
  br label %162

142:                                              ; preds = %129, %126
  %143 = load i32, i32* @kdb_get_kbd_char.ctrl_key, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %158

145:                                              ; preds = %142
  %146 = load i32**, i32*** @key_maps, align 8
  %147 = getelementptr inbounds i32*, i32** %146, i64 4
  %148 = load i32*, i32** %147, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i32**, i32*** @key_maps, align 8
  %152 = getelementptr inbounds i32*, i32** %151, i64 4
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %2, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %4, align 4
  br label %161

158:                                              ; preds = %145, %142
  store i32 32, i32* %4, align 4
  %159 = load i32, i32* %2, align 4
  %160 = call i32 @kdb_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %159)
  br label %161

161:                                              ; preds = %158, %150
  br label %162

162:                                              ; preds = %161, %134
  br label %163

163:                                              ; preds = %162, %117
  %164 = load i32, i32* %4, align 4
  %165 = and i32 %164, 4095
  store i32 %165, i32* %4, align 4
  %166 = load i32, i32* %4, align 4
  %167 = icmp eq i32 %166, 9
  br i1 %167, label %168, label %169

168:                                              ; preds = %163
  store i32 32, i32* %4, align 4
  br label %169

169:                                              ; preds = %168, %163
  %170 = load i32, i32* %4, align 4
  %171 = call i32 @KTYP(i32 %170)
  switch i32 %171, label %184 [
    i32 129, label %172
    i32 130, label %172
    i32 128, label %178
  ]

172:                                              ; preds = %169, %169
  %173 = load i32, i32* %4, align 4
  %174 = call i32 @isprint(i32 %173) #3
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  br label %185

177:                                              ; preds = %172
  br label %178

178:                                              ; preds = %169, %177
  %179 = load i32, i32* %4, align 4
  %180 = load i32, i32* @K_ENTER, align 4
  %181 = icmp eq i32 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %178
  br label %185

183:                                              ; preds = %178
  br label %184

184:                                              ; preds = %169, %183
  store i32 -1, i32* %1, align 4
  br label %192

185:                                              ; preds = %182, %176
  %186 = load i32, i32* %2, align 4
  %187 = icmp eq i32 %186, 28
  br i1 %187, label %188, label %189

188:                                              ; preds = %185
  store i32 1, i32* @kbd_last_ret, align 4
  store i32 13, i32* %1, align 4
  br label %192

189:                                              ; preds = %185
  %190 = load i32, i32* %4, align 4
  %191 = and i32 %190, 255
  store i32 %191, i32* %1, align 4
  br label %192

192:                                              ; preds = %189, %188, %184, %98, %94, %93, %92, %91, %90, %89, %88, %87, %84, %78, %72, %63, %52, %37, %27, %20
  %193 = load i32, i32* %1, align 4
  ret i32 %193
}

declare dso_local i64 @KDB_FLAG(i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @kdb_printf(i8*, i32) #1

declare dso_local i32 @KTYP(i32) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isprint(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
