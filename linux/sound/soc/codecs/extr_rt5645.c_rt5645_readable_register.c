
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int dummy; } ;
struct TYPE_3__ {unsigned int range_min; unsigned int range_max; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 TYPE_1__* rt5645_ranges ;

__attribute__((used)) static bool rt5645_readable_register(struct device *dev, unsigned int reg)
{
 int i;

 for (i = 0; i < ARRAY_SIZE(rt5645_ranges); i++) {
  if (reg >= rt5645_ranges[i].range_min &&
   reg <= rt5645_ranges[i].range_max) {
   return 1;
  }
 }

 switch (reg) {
 case 150:
 case 146:
 case 197:
 case 179:
 case 191:
 case 190:
 case 189:
 case 188:
 case 187:
 case 149:
 case 254:
 case 239:
 case 238:
 case 237:
 case 143:
 case 176:
 case 264:
 case 263:
 case 142:
 case 175:
 case 253:
 case 141:
 case 174:
 case 232:
 case 129:
 case 233:
 case 165:
 case 154:
 case 153:
 case 152:
 case 151:
 case 203:
 case 201:
 case 202:
 case 200:
 case 199:
 case 148:
 case 147:
 case 144:
 case 145:
 case 171:
 case 168:
 case 170:
 case 169:
 case 167:
 case 166:
 case 178:
 case 213:
 case 211:
 case 210:
 case 209:
 case 208:
 case 207:
 case 206:
 case 205:
 case 204:
 case 212:
 case 158:
 case 157:
 case 160:
 case 159:
 case 156:
 case 155:
 case 161:
 case 162:
 case 196:
 case 195:
 case 258:
 case 257:
 case 231:
 case 230:
 case 138:
 case 137:
 case 136:
 case 128:
 case 217:
 case 164:
 case 163:
 case 247:
 case 246:
 case 245:
 case 244:
 case 236:
 case 235:
 case 234:
 case 241:
 case 177:
 case 243:
 case 135:
 case 240:
 case 262:
 case 261:
 case 222:
 case 221:
 case 252:
 case 251:
 case 250:
 case 249:
 case 248:
 case 182:
 case 185:
 case 184:
 case 183:
 case 186:
 case 216:
 case 215:
 case 214:
 case 242:
 case 173:
 case 172:
 case 256:
 case 255:
 case 198:
 case 140:
 case 139:
 case 194:
 case 193:
 case 192:
 case 131:
 case 130:
 case 229:
 case 223:
 case 260:
 case 259:
 case 228:
 case 227:
 case 226:
 case 225:
 case 224:
 case 181:
 case 180:
 case 220:
 case 219:
 case 218:
 case 134:
 case 133:
 case 132:
  return 1;
 default:
  return 0;
 }
}
